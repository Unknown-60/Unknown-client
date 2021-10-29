.class Lnami/dialog/colordialog/PromptDialog$100000002;
.super Ljava/lang/Object;
.source "PromptDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnami/dialog/colordialog/PromptDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "100000002"
.end annotation


# instance fields
.field private final this$0:Lnami/dialog/colordialog/PromptDialog;


# direct methods
.method constructor <init>(Lnami/dialog/colordialog/PromptDialog;)V
    .registers 7

    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lnami/dialog/colordialog/PromptDialog$100000002;->this$0:Lnami/dialog/colordialog/PromptDialog;

    return-void
.end method

.method static access$0(Lnami/dialog/colordialog/PromptDialog$100000002;)Lnami/dialog/colordialog/PromptDialog;
    .registers 5

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lnami/dialog/colordialog/PromptDialog$100000002;->this$0:Lnami/dialog/colordialog/PromptDialog;

    move-object v0, v3

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    iget-object v3, v3, Lnami/dialog/colordialog/PromptDialog$100000002;->this$0:Lnami/dialog/colordialog/PromptDialog;

    invoke-static {v3}, Lnami/dialog/colordialog/PromptDialog;->access$L1000008(Lnami/dialog/colordialog/PromptDialog;)Lnami/dialog/colordialog/PromptDialog$OnPositiveListener;

    move-result-object v3

    if-eqz v3, :cond_18

    move-object v3, v0

    iget-object v3, v3, Lnami/dialog/colordialog/PromptDialog$100000002;->this$0:Lnami/dialog/colordialog/PromptDialog;

    invoke-static {v3}, Lnami/dialog/colordialog/PromptDialog;->access$L1000008(Lnami/dialog/colordialog/PromptDialog;)Lnami/dialog/colordialog/PromptDialog$OnPositiveListener;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Lnami/dialog/colordialog/PromptDialog$100000002;->this$0:Lnami/dialog/colordialog/PromptDialog;

    invoke-interface {v3, v4}, Lnami/dialog/colordialog/PromptDialog$OnPositiveListener;->onClick(Lnami/dialog/colordialog/PromptDialog;)V

    :cond_18
    return-void
.end method
