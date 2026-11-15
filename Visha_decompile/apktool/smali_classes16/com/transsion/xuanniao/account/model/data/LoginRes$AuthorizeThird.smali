.class public Lcom/transsion/xuanniao/account/model/data/LoginRes$AuthorizeThird;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/xuanniao/account/model/data/LoginRes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AuthorizeThird"
.end annotation


# instance fields
.field public accountId:Ljava/lang/Long;

.field public appId:Ljava/lang/String;

.field public displayName:Ljava/lang/String;

.field public openId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
