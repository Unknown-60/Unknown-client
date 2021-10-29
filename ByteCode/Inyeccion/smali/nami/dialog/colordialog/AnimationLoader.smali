.class public Lnami/dialog/colordialog/AnimationLoader;
.super Ljava/lang/Object;
.source "AnimationLoader.java"


# direct methods
.method public constructor <init>()V
    .registers 4

    move-object v0, p0

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInAnimation(Landroid/content/Context;)Landroid/view/animation/AnimationSet;
    .registers 20

    move-object/from16 v0, p0

    new-instance v8, Landroid/view/animation/AnimationSet;

    move-object/from16 v18, v8

    move-object/from16 v8, v18

    move-object/from16 v9, v18

    move-object v10, v0

    const/4 v11, 0x0

    check-cast v11, Landroid/util/AttributeSet;

    invoke-direct {v9, v10, v11}, Landroid/view/animation/AnimationSet;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    move-object v2, v8

    new-instance v8, Landroid/view/animation/AlphaAnimation;

    move-object/from16 v18, v8

    move-object/from16 v8, v18

    move-object/from16 v9, v18

    const/4 v10, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-direct {v9, v10, v11}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    move-object v3, v8

    move-object v8, v3

    const/16 v9, 0x5a

    int-to-long v9, v9

    invoke-virtual {v8, v9, v10}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    new-instance v8, Landroid/view/animation/ScaleAnimation;

    move-object/from16 v18, v8

    move-object/from16 v8, v18

    move-object/from16 v9, v18

    const v10, 0x3f4ccccd    # 0.8f

    const v11, 0x3f866666    # 1.05f

    const v12, 0x3f4ccccd    # 0.8f

    const v13, 0x3f866666    # 1.05f

    const/4 v14, 0x1

    const/high16 v15, 0x3f000000    # 0.5f

    const/16 v16, 0x1

    const/high16 v17, 0x3f000000    # 0.5f

    invoke-direct/range {v9 .. v17}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    move-object v4, v8

    move-object v8, v4

    const/16 v9, 0x87

    int-to-long v9, v9

    invoke-virtual {v8, v9, v10}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    new-instance v8, Landroid/view/animation/ScaleAnimation;

    move-object/from16 v18, v8

    move-object/from16 v8, v18

    move-object/from16 v9, v18

    const v10, 0x3f866666    # 1.05f

    const v11, 0x3f733333    # 0.95f

    const v12, 0x3f866666    # 1.05f

    const v13, 0x3f733333    # 0.95f

    const/4 v14, 0x1

    const/high16 v15, 0x3f000000    # 0.5f

    const/16 v16, 0x1

    const/high16 v17, 0x3f000000    # 0.5f

    invoke-direct/range {v9 .. v17}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    move-object v5, v8

    move-object v8, v5

    const/16 v9, 0x69

    int-to-long v9, v9

    invoke-virtual {v8, v9, v10}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    move-object v8, v5

    const/16 v9, 0x87

    int-to-long v9, v9

    invoke-virtual {v8, v9, v10}, Landroid/view/animation/ScaleAnimation;->setStartOffset(J)V

    new-instance v8, Landroid/view/animation/ScaleAnimation;

    move-object/from16 v18, v8

    move-object/from16 v8, v18

    move-object/from16 v9, v18

    const v10, 0x3f733333    # 0.95f

    const/high16 v11, 0x3f800000    # 1.0f

    const v12, 0x3f733333    # 0.95f

    const/high16 v13, 0x3f800000    # 1.0f

    const/4 v14, 0x1

    const/high16 v15, 0x3f000000    # 0.5f

    const/16 v16, 0x1

    const/high16 v17, 0x3f000000    # 0.5f

    invoke-direct/range {v9 .. v17}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    move-object v6, v8

    move-object v8, v6

    const/16 v9, 0x3c

    int-to-long v9, v9

    invoke-virtual {v8, v9, v10}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    move-object v8, v6

    const/16 v9, 0xf0

    int-to-long v9, v9

    invoke-virtual {v8, v9, v10}, Landroid/view/animation/ScaleAnimation;->setStartOffset(J)V

    move-object v8, v2

    move-object v9, v3

    invoke-virtual {v8, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    move-object v8, v2

    move-object v9, v4

    invoke-virtual {v8, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    move-object v8, v2

    move-object v9, v5

    invoke-virtual {v8, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    move-object v8, v2

    move-object v9, v6

    invoke-virtual {v8, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    move-object v8, v2

    move-object v0, v8

    return-object v0
.end method

.method public static getOutAnimation(Landroid/content/Context;)Landroid/view/animation/AnimationSet;
    .registers 18

    move-object/from16 v0, p0

    new-instance v6, Landroid/view/animation/AnimationSet;

    move-object/from16 v16, v6

    move-object/from16 v6, v16

    move-object/from16 v7, v16

    move-object v8, v0

    const/4 v9, 0x0

    check-cast v9, Landroid/util/AttributeSet;

    invoke-direct {v7, v8, v9}, Landroid/view/animation/AnimationSet;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    move-object v2, v6

    new-instance v6, Landroid/view/animation/AlphaAnimation;

    move-object/from16 v16, v6

    move-object/from16 v6, v16

    move-object/from16 v7, v16

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    invoke-direct {v7, v8, v9}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    move-object v3, v6

    move-object v6, v3

    const/16 v7, 0x96

    int-to-long v7, v7

    invoke-virtual {v6, v7, v8}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    new-instance v6, Landroid/view/animation/ScaleAnimation;

    move-object/from16 v16, v6

    move-object/from16 v6, v16

    move-object/from16 v7, v16

    const/high16 v8, 0x3f800000    # 1.0f

    const v9, 0x3f19999a    # 0.6f

    const/high16 v10, 0x3f800000    # 1.0f

    const v11, 0x3f19999a    # 0.6f

    const/4 v12, 0x1

    const/high16 v13, 0x3f000000    # 0.5f

    const/4 v14, 0x1

    const/high16 v15, 0x3f000000    # 0.5f

    invoke-direct/range {v7 .. v15}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    move-object v4, v6

    move-object v6, v4

    const/16 v7, 0x96

    int-to-long v7, v7

    invoke-virtual {v6, v7, v8}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    move-object v6, v2

    move-object v7, v3

    invoke-virtual {v6, v7}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    move-object v6, v2

    move-object v7, v4

    invoke-virtual {v6, v7}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    move-object v6, v2

    move-object v0, v6

    return-object v0
.end method
