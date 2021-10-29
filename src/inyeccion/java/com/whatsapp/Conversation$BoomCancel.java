package com.whatsapp;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;

/**
* Título: Unkbown Client.
* Desarrollador: Unknown-60.
* Código fuente: github.com/Unknown-60
**/

class Conversation$BoomCancel implements OnClickListener {
    private final Conversation this$0;

    Conversation$BoomCancel(Conversation conversation) {
        Conversation$BoomCancel conversation$BoomCancel = this;
        this.this$0 = conversation;
    }

    static Conversation access$0(Conversation$BoomCancel conversation$BoomCancel) {
        return conversation$BoomCancel.this$0;
    }

    public void onClick(DialogInterface dialogInterface, int i) {
        Conversation$BoomCancel conversation$BoomCancel = this;
        int i2 = i;
        dialogInterface.cancel();
    }
}
