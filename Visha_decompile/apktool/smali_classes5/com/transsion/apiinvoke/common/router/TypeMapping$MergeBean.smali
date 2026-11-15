.class public final Lcom/transsion/apiinvoke/common/router/TypeMapping$MergeBean;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/apiinvoke/common/router/TypeMapping;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MergeBean"
.end annotation


# instance fields
.field public from:[Ljava/lang/String;

.field public to:Ljava/lang/String;


# direct methods
.method public constructor <init>([Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/apiinvoke/common/router/TypeMapping$MergeBean;->from:[Ljava/lang/String;

    iput-object p2, p0, Lcom/transsion/apiinvoke/common/router/TypeMapping$MergeBean;->to:Ljava/lang/String;

    return-void
.end method
