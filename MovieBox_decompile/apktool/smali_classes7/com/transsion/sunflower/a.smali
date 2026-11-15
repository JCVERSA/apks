.class public abstract Lcom/transsion/sunflower/a;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/sunflower/a$a;
    }
.end annotation


# static fields
.field public static final a:Lcom/transsion/sunflower/a$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/transsion/sunflower/a$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/transsion/sunflower/a$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/transsion/sunflower/a;->a:Lcom/transsion/sunflower/a$a;

    .line 8
    .line 9
    return-void
.end method

.method public static final synthetic a()Lcom/transsion/sunflower/a;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method
