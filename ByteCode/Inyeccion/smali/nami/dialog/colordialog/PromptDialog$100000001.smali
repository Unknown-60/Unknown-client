.class Lnami/dialog/colordialog/PromptDialog$100000001;
.super Ljava/lang/Object;
.source "PromptDialog.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnami/dialog/colordialog/PromptDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "100000001"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnami/dialog/colordialog/PromptDialog$100000001$100000000;
    }
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

    iput-object v4, v3, Lnami/dialog/colordialog/PromptDialog$100000001;->this$0:Lnami/dialog/colordialog/PromptDialog;

    return-void
.end method

.method static access$0(Lnami/dialog/colordialog/PromptDialog$100000001;)Lnami/dialog/colordialog/PromptDialog;
    .registers 5

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lnami/dialog/colordialog/PromptDialog$100000001;->this$0:Lnami/dialog/colordialog/PromptDialog;

    move-object v0, v3

    return-object v0
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/animation/Animation;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    iget-object v3, v3, Lnami/dialog/colordialog/PromptDialog$100000001;->this$0:Lnami/dialog/colordialog/PromptDialog;

    invoke-static {v3}, Lnami/dialog/colordialog/PromptDialog;->access$L1000004(Lnami/dialog/colordialog/PromptDialog;)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lnami/dialog/colordialog/PromptDialog$100000001$100000000;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v0

    invoke-direct {v5, v6}, Lnami/dialog/colordialog/PromptDialog$100000001$100000000;-><init>(Lnami/dialog/colordialog/PromptDialog$100000001;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    move-result v3

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/animation/Animation;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/animation/Animation;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    return-void
.end method
