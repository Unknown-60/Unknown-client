package com.whatsapp;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;

/**
* Título: Unknown Client.
* Desarrollador: Unknown-60.
* Código fuente: github.com/Unknown-60
**/

class Conversation$BoomStart implements OnClickListener {
    private final Conversation this$0;

    Conversation$BoomStart(Conversation conversation) {
        Conversation$BoomStart conversation$BoomStart = this;
        this.this$0 = conversation;
    }

    static Conversation access$0(Conversation$BoomStart conversation$BoomStart) {
        return conversation$BoomStart.this$0;
    }

    public void onClick(DialogInterface dialogInterface, int i) {
        DialogInterface dialogInterface2 = dialogInterface;
        int i2 = i;
        this.this$0.namiBoomTextStart();
    }
}
