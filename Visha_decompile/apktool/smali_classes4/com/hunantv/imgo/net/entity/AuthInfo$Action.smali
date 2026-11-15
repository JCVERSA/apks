.class public Lcom/hunantv/imgo/net/entity/AuthInfo$Action;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mgtv/json/JsonInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hunantv/imgo/net/entity/AuthInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Action"
.end annotation


# static fields
.field public static final TAG_GET_MOVIE_TICKET:I = 0x2713

.field public static final TAG_LOGIN:I = 0x271a

.field public static final TAG_OPEN_VIP_PAY_PAGE:I = 0x2711

.field public static final TAG_SINGLE_PAY_PAGE:I = 0x2712

.field public static final TAG_USE_MOVIE_TICKET:I = 0x2714


# instance fields
.field public coupon_desc:Ljava/lang/String;

.field public half_disp:I

.field public tag:I

.field public tag_ext:Ljava/lang/String;

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isHalfDisplay()Z
    .locals 1

    iget p0, p0, Lcom/hunantv/imgo/net/entity/AuthInfo$Action;->half_disp:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
