.class public abstract Lphb$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lphb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# static fields
.field public static final a:Lphb;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lphb;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lphb;-><init>(Lphb$a;)V

    sput-object v0, Lphb$b;->a:Lphb;

    return-void
.end method

.method public static synthetic a()Lphb;
    .locals 1

    sget-object v0, Lphb$b;->a:Lphb;

    return-object v0
.end method
