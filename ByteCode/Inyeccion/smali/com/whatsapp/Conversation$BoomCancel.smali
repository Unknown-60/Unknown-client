.class Lcom/whatsapp/Conversation$BoomCancel;
.super Ljava/lang/Object;
.source "Conversation.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/whatsapp/Conversation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "BoomCancel"
.end annotation


# instance fields
.field private final this$0:Lcom/whatsapp/Conversation;


# direct methods
.method constructor <init>(Lcom/whatsapp/Conversation;)V
    .registers 7

    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/whatsapp/Conversation$BoomCancel;->this$0:Lcom/whatsapp/Conversation;

    return-void
.end method

.method static access$0(Lcom/whatsapp/Conversation$BoomCancel;)Lcom/whatsapp/Conversation;
    .registers 5

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lcom/whatsapp/Conversation$BoomCancel;->this$0:Lcom/whatsapp/Conversation;

    move-object v0, v3

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/DialogInterface;",
            "I)V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, v1

    invoke-interface {v4}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method
