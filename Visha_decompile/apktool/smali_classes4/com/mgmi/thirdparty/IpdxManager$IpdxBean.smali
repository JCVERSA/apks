.class public Lcom/mgmi/thirdparty/IpdxManager$IpdxBean;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mgadplus/netlib/json/a;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mgmi/thirdparty/IpdxManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IpdxBean"
.end annotation


# instance fields
.field public code:I

.field public exptime:I

.field public geocode:Ljava/lang/String;

.field public id:Ljava/lang/String;

.field public ip:Ljava/lang/String;

.field public message:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
