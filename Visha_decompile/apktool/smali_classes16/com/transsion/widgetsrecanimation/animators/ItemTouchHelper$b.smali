.class public abstract Lcom/transsion/widgetsrecanimation/animators/ItemTouchHelper$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/widgetsrecanimation/animators/ItemTouchHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "b"
.end annotation


# static fields
.field public static final a:Landroid/view/animation/Interpolator;

.field public static final b:Landroid/view/animation/Interpolator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/transsion/widgetsrecanimation/animators/ItemTouchHelper$b$a;

    invoke-direct {v0}, Lcom/transsion/widgetsrecanimation/animators/ItemTouchHelper$b$a;-><init>()V

    sput-object v0, Lcom/transsion/widgetsrecanimation/animators/ItemTouchHelper$b;->a:Landroid/view/animation/Interpolator;

    new-instance v0, Lcom/transsion/widgetsrecanimation/animators/ItemTouchHelper$b$b;

    invoke-direct {v0}, Lcom/transsion/widgetsrecanimation/animators/ItemTouchHelper$b$b;-><init>()V

    sput-object v0, Lcom/transsion/widgetsrecanimation/animators/ItemTouchHelper$b;->b:Landroid/view/animation/Interpolator;

    return-void
.end method
