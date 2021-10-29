.class public Lnami/dialog/colordialog/DisplayUtil;
.super Ljava/lang/Object;
.source "DisplayUtil.java"


# direct methods
.method public constructor <init>()V
    .registers 4

    move-object v0, p0

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dp2px(Landroid/content/Context;F)I
    .registers 9

    move-object v0, p0

    move v1, p1

    move-object v5, v0

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    move v3, v5

    move v5, v1

    move v6, v3

    mul-float/2addr v5, v6

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v5, v6

    float-to-int v5, v5

    move v0, v5

    return v0
.end method

.method public static getScreenSize(Landroid/content/Context;)Landroid/graphics/Point;
    .registers 9

    move-object v0, p0

    new-instance v5, Landroid/graphics/Point;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Landroid/graphics/Point;-><init>()V

    move-object v2, v5

    move-object v5, v0

    const-string v6, "window"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/WindowManager;

    move-object v3, v5

    move-object v5, v3

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    move-object v6, v2

    invoke-virtual {v5, v6}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    move-object v5, v2

    move-object v0, v5

    return-object v0
.end method

.method public static px2dp(Landroid/content/Context;F)I
    .registers 9

    move-object v0, p0

    move v1, p1

    move-object v5, v0

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    move v3, v5

    move v5, v1

    move v6, v3

    div-float/2addr v5, v6

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v5, v6

    float-to-int v5, v5

    move v0, v5

    return v0
.end method
