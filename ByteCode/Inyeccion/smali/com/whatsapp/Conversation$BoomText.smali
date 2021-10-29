.class Lcom/whatsapp/Conversation$BoomText;
.super Ljava/lang/Object;
.source "Conversation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/whatsapp/Conversation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "BoomText"
.end annotation


# instance fields
.field count:I

.field private final this$0:Lcom/whatsapp/Conversation;

.field private final val$mHandler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/whatsapp/Conversation;Landroid/os/Handler;)V
    .registers 9

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/whatsapp/Conversation$BoomText;->this$0:Lcom/whatsapp/Conversation;

    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Lcom/whatsapp/Conversation$BoomText;->val$mHandler:Landroid/os/Handler;

    move-object v4, v0

    const/4 v5, 0x0

    iput v5, v4, Lcom/whatsapp/Conversation$BoomText;->count:I

    return-void
.end method

.method static access$0(Lcom/whatsapp/Conversation$BoomText;)Lcom/whatsapp/Conversation;
    .registers 5

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lcom/whatsapp/Conversation$BoomText;->this$0:Lcom/whatsapp/Conversation;

    move-object v0, v3

    return-object v0
.end method


# virtual methods
.method public run()V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    move-object v0, p0

    move-object v2, v0

    iget v2, v2, Lcom/whatsapp/Conversation$BoomText;->count:I

    move-object v3, v0

    iget-object v3, v3, Lcom/whatsapp/Conversation$BoomText;->this$0:Lcom/whatsapp/Conversation;

    invoke-virtual {v3}, Lcom/whatsapp/Conversation;->namiBoomCount()I

    move-result v3

    if-ge v2, v3, :cond_26

    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Lcom/whatsapp/Conversation$BoomText;->count:I

    const/4 v4, 0x1

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/whatsapp/Conversation$BoomText;->count:I

    move-object v2, v0

    iget-object v2, v2, Lcom/whatsapp/Conversation$BoomText;->this$0:Lcom/whatsapp/Conversation;

    invoke-virtual {v2}, Lcom/whatsapp/Conversation;->namiBoomStart()V

    move-object v2, v0

    iget-object v2, v2, Lcom/whatsapp/Conversation$BoomText;->val$mHandler:Landroid/os/Handler;

    move-object v3, v0

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v2

    :cond_26
    return-void
.end method
