.class public abstract Lspc$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lspc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# static fields
.field public static final a:Lspc;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lspc;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lspc;-><init>(Lspc$a;)V

    sput-object v0, Lspc$b;->a:Lspc;

    return-void
.end method

.method public static synthetic a()Lspc;
    .locals 1

    sget-object v0, Lspc$b;->a:Lspc;

    return-object v0
.end method
