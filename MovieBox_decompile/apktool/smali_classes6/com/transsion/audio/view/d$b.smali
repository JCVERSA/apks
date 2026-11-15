.class abstract Lcom/transsion/audio/view/d$b;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/audio/view/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# static fields
.field private static final a:Lcom/transsion/audio/view/d;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/transsion/audio/view/d;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/transsion/audio/view/d;-><init>(Lcom/transsion/audio/view/e;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/transsion/audio/view/d$b;->a:Lcom/transsion/audio/view/d;

    .line 8
    .line 9
    return-void
.end method

.method static bridge synthetic a()Lcom/transsion/audio/view/d;
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/audio/view/d$b;->a:Lcom/transsion/audio/view/d;

    .line 2
    .line 3
    return-object v0
.end method
