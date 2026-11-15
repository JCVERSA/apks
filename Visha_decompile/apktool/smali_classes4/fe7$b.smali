.class public abstract Lfe7$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfe7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# static fields
.field public static a:Lfe7;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lfe7;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lfe7;-><init>(Lfe7$a;)V

    sput-object v0, Lfe7$b;->a:Lfe7;

    return-void
.end method

.method public static synthetic a()Lfe7;
    .locals 1

    sget-object v0, Lfe7$b;->a:Lfe7;

    return-object v0
.end method
