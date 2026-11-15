.class public abstract Lzzi;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lwzi;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lwzi;

    invoke-direct {v0}, Lwzi;-><init>()V

    sput-object v0, Lzzi;->a:Lwzi;

    return-void
.end method

.method public static a()Lwzi;
    .locals 1

    sget-object v0, Lzzi;->a:Lwzi;

    return-object v0
.end method
