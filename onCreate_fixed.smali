.method public onCreate(Landroid/os/Bundle;)V
    .registers 16
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    const-string v0, "TermuxActivity"

    const-string v1, "onCreate"

    .line 182
    invoke-static {v0, v1}, Lcom/termux/shared/logger/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 183
    iput-boolean v1, p0, Lcom/termux/app/TermuxActivity;->isOnResumeAfterOnCreate:Z

    .line 187
    invoke-static {p0, v0}, Lcom/termux/app/utils/CrashUtils;->notifyAppCrashOnLastRun(Landroid/content/Context;Ljava/lang/String;)V

    const/16 v0, 0xe

    const/4 v2, 0x0

    .line 190
    invoke-static {p0, v0, v2}, Lcom/termux/shared/activities/ReportActivity;->deleteReportInfoFilesOlderThanXDays(Landroid/content/Context;IZ)Lcom/termux/shared/models/errors/Error;

    .line 193
    new-instance v0, Lcom/termux/app/settings/properties/TermuxAppSharedProperties;

    invoke-direct {v0, p0}, Lcom/termux/app/settings/properties/TermuxAppSharedProperties;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/termux/app/TermuxActivity;->mProperties:Lcom/termux/app/settings/properties/TermuxAppSharedProperties;

    .line 195
    invoke-direct {p0}, Lcom/termux/app/TermuxActivity;->setActivityTheme()V

    .line 197
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0b001e

    .line 199
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    .line 203
    invoke-static {p0, v1}, Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;->build(Landroid/content/Context;Z)Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/termux/app/TermuxActivity;->mPreferences:Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;

    if-nez v0, :cond_31

    .line 206
    iput-boolean v1, p0, Lcom/termux/app/TermuxActivity;->mIsInvalidState:Z

    return-void

    .line 210
    :cond_31
    invoke-direct {p0}, Lcom/termux/app/TermuxActivity;->setMargins()V

    const v0, 0x7f080045

    .line 212
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/termux/app/terminal/TermuxActivityRootView;

    iput-object v0, p0, Lcom/termux/app/TermuxActivity;->mTermuxActivityRootView:Lcom/termux/app/terminal/TermuxActivityRootView;

    .line 213
    invoke-virtual {v0, p0}, Lcom/termux/app/terminal/TermuxActivityRootView;->setActivity(Lcom/termux/app/TermuxActivity;)V

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getFilesDir()Ljava/io/File;

    move-result-object v3

    new-instance v4, Ljava/io/File;

    const-string v5, "background.png"

    invoke-direct {v4, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_69

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v5

    if-eqz v5, :cond_69

    new-instance v6, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-direct {v6, v7, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v6}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_69
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    const-string v9, "sakura_prefs"

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v8

    const-string v9, "shown_welcome_popup"

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_a8

    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v5, "\ud83c\udf38 Sakura-XD"

    invoke-virtual {v3, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const-string v5, "\u02b0\u1d07\u028f \u1d18\u1d1c\u1d04\u1d1c\'\u1d22 \ud83e\udd0d\ud83c\udf38!!\n\n\u026a\'\u1d0d @S\u1d00\u1d0b\u1d1c\u0280\u1d00-X\u1d05 ~ \u1d21\u02b0\u1d00\u1d1b\u02e2\u1d00\u1d18\u1d18 \u02b7\u1d0f\u1d1b \ud83e\udd16\u2728\n\n\ud83c\udf38 s\u1d0d\u1d00\u0280\u1d1b \u2022 \ua73aa\u02e2\u1d1b \u2022 \u1d18\u1d0f\u1d21\u1d07\u0280\ua73a\u1d1c\u029f \u02b7\u1d0f\u1d1b\n\ud83d\udc31 \u1d04\u0280\u1d07\u1d00\u1d1b\u1d07\u1d05 \u02b7\u028f \u02b7\u1d0f\u029f\u1d00\u1d04\u1d0b \u1d04\u1d00\u1d1b o\ua73a\u1d04\n\n\ud83d\udd17 \u029f\u026a\u0274\u1d0b\u0455:\n\ud83c\udf10 \u1d21\u1d07\u1d07 : https://saku.kurox.site/\n\ud83d\udd17 \u1d18\u1d00\u026a\u0280 : https://saku.kurox.site/pair\n\u267b s\u1d07\u1d1b\u1d1b\u026a\u0274\u0262s: https://saku.kurox.site/settings\n\ud83d\udc96 \u0280\u1d07\u1d00\u1d04\u1d1b : https://saku.kurox.site/react\n\ud83d\uded2 s\u029b\u1d0f\u1d18: https://saku.kurox.site/shop\n\n\ud83e\udda4 \u1d18\u1d0f\u1d21\u1d07\u0280\u1d07\u1d05 \u02b7\u028f \u02b7\u1d0f\u029f\u1d00\u1d04\u1d0b \u1d04\u1d00\u1d1b o\ua73a\u1d04\n\ud83c\udf38 s\u1d00\u1d0b\u1d1c\u0280\u1d00-x\u1d05 v1"

    invoke-virtual {v3, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const-string v5, "OK"

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v3, v9, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_a8
    const v0, 0x7f080043

    .line 214
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/termux/app/TermuxActivity;->mTermuxActivityBottomSpaceView:Landroid/view/View;

    .line 215
    iget-object v0, p0, Lcom/termux/app/TermuxActivity;->mTermuxActivityRootView:Lcom/termux/app/terminal/TermuxActivityRootView;

    new-instance v1, Lcom/termux/app/terminal/TermuxActivityRootView$WindowInsetsListener;

    invoke-direct {v1}, Lcom/termux/app/terminal/TermuxActivityRootView$WindowInsetsListener;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    const v0, 0x1020002

    .line 217
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 218
    new-instance v1, Lcom/termux/app/-$$Lambda$TermuxActivity$R86CrS-vWQv2w37F0KxXs9_9934;

    invoke-direct {v1, p0}, Lcom/termux/app/-$$Lambda$TermuxActivity$R86CrS-vWQv2w37F0KxXs9_9934;-><init>(Lcom/termux/app/TermuxActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 223
    iget-object v0, p0, Lcom/termux/app/TermuxActivity;->mProperties:Lcom/termux/app/settings/properties/TermuxAppSharedProperties;

    invoke-virtual {v0}, Lcom/termux/shared/settings/properties/TermuxSharedProperties;->isUsingFullScreen()Z

    move-result v0

    if-eqz v0, :cond_db

    .line 224
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 227
    :cond_db
    invoke-direct {p0}, Lcom/termux/app/TermuxActivity;->setDrawerTheme()V

    .line 229
    invoke-direct {p0}, Lcom/termux/app/TermuxActivity;->setTermuxTerminalViewAndClients()V

    .line 231
    invoke-direct {p0, p1}, Lcom/termux/app/TermuxActivity;->setTerminalToolbarView(Landroid/os/Bundle;)V

    .line 233
    invoke-direct {p0}, Lcom/termux/app/TermuxActivity;->setSettingsButtonView()V

    .line 235
    invoke-direct {p0}, Lcom/termux/app/TermuxActivity;->setNewSessionButtonView()V

    .line 237
    invoke-direct {p0}, Lcom/termux/app/TermuxActivity;->setToggleKeyboardView()V

    .line 239
    iget-object p1, p0, Lcom/termux/app/TermuxActivity;->mTerminalView:Lcom/termux/view/TerminalView;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->registerForContextMenu(Landroid/view/View;)V

    .line 242
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/termux/app/TermuxService;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 243
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 247
    invoke-virtual {p0, p1, p0, v2}, Landroid/app/Activity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p1

    if-eqz p1, :cond_106

    .line 252
    invoke-static {p0}, Lcom/termux/shared/termux/TermuxUtils;->sendTermuxOpenedBroadcast(Landroid/content/Context;)V

    return-void

    .line 248
    :cond_106
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "bindService() failed"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
