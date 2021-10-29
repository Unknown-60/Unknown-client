.class Lnami/dialog/colordialog/PromptDialog$100000001$100000000;
.super Ljava/lang/Object;
.source "PromptDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnami/dialog/colordialog/PromptDialog$100000001;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "100000000"
.end annotation


# instance fields
.field private final this$0:Lnami/dialog/colordialog/PromptDialog$100000001;


# direct methods
.method constructor <init>(Lnami/dialog/colordialog/PromptDialog$100000001;)V
    .registers 7

    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lnami/dialog/colordialog/PromptDialog$100000001$100000000;->this$0:Lnami/dialog/colordialog/PromptDialog$100000001;

    return-void
.end method

.method static access$0(Lnami/dialog/colordialog/PromptDialog$100000001$100000000;)Lnami/dialog/colordialog/PromptDialog$100000001;
    .registers 5

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lnami/dialog/colordialog/PromptDialog$100000001$100000000;->this$0:Lnami/dialog/colordialog/PromptDialog$100000001;

    move-object v0, v3

    return-object v0
.end method


# virtual methods
.method public run()V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Lnami/dialog/colordialog/PromptDialog$100000001$100000000;->this$0:Lnami/dialog/colordialog/PromptDialog$100000001;

    invoke-static {v2}, Lnami/dialog/colordialog/PromptDialog$100000001;->access$0(Lnami/dialog/colordialog/PromptDialog$100000001;)Lnami/dialog/colordialog/PromptDialog;

    move-result-object v2

    invoke-static {v2}, Lnami/dialog/colordialog/PromptDialog;->access$1000029(Lnami/dialog/colordialog/PromptDialog;)V

    return-void
.end method
