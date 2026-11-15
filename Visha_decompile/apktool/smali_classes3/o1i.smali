.class public abstract Lo1i;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static c()Ln1i;
    .locals 2

    new-instance v0, Lm0i;

    invoke-direct {v0}, Lm0i;-><init>()V

    const/16 v1, 0x1fd6

    invoke-virtual {v0, v1}, Lm0i;->b(I)Ln1i;

    return-object v0
.end method


# virtual methods
.method public abstract a()I
.end method

.method public abstract b()Ljava/lang/String;
.end method
