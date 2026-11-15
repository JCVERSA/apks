.class public final Lry9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls30;


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lry9;->a:Ljava/lang/String;

    return-void
.end method

.method public static a(Lqw7;)Lry9;
    .locals 2

    new-instance v0, Lry9;

    invoke-virtual {p0}, Lqw7;->a()I

    move-result v1

    invoke-virtual {p0, v1}, Lqw7;->z(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lry9;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getType()I
    .locals 0

    const p0, 0x6e727473

    return p0
.end method
