.class public Lfreemarker/core/l0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmga;
.implements Lnga;
.implements Lpfa;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/core/l0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lk52;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lfreemarker/core/l0$a;-><init>()V

    return-void
.end method


# virtual methods
.method public get(I)Lzfa;
    .locals 0

    .line 1
    const/4 p0, 0x0

    return-object p0
.end method

.method public get(Ljava/lang/String;)Lzfa;
    .locals 0

    .line 2
    const/4 p0, 0x0

    return-object p0
.end method

.method public getAsString()Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method public isEmpty()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public keys()Lbfa;
    .locals 0

    invoke-static {}, Lfreemarker/core/l0;->X()Lbfa;

    move-result-object p0

    return-object p0
.end method

.method public size()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public values()Lbfa;
    .locals 0

    invoke-static {}, Lfreemarker/core/l0;->X()Lbfa;

    move-result-object p0

    return-object p0
.end method
