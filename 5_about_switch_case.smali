# STEP A: find the packed-switch table:
#     :pswitch_11        #0000000b
#     :pswitch_backup    #0000000c
#     .end packed-switch
#
# ADD a new line right after :pswitch_backup:
#
#     :pswitch_11        #0000000b
#     :pswitch_backup    #0000000c
#     :pswitch_about     #0000000d
#     .end packed-switch


# STEP B: add this new label block anywhere before ".end method"
# (e.g. right after the :pswitch_backup block)

    :pswitch_about
    invoke-direct {p0}, Lcom/termux/app/TermuxActivity;->showAboutDialog()V

    return v2
