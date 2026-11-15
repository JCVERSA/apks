.class public Lcom/mgmi/trace/ExtraJson;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mgadplus/netlib/json/a;
.implements Ljava/io/Serializable;


# instance fields
.field private is_cache:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getIs_cache()I
    .locals 0

    iget p0, p0, Lcom/mgmi/trace/ExtraJson;->is_cache:I

    return p0
.end method

.method public setIs_cache(I)V
    .locals 0

    iput p1, p0, Lcom/mgmi/trace/ExtraJson;->is_cache:I

    return-void
.end method
