.class public final Lcom/cloud/tmc/integration/bridge/NavigationBarBridge$H5NavigationStyle;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/tmc/integration/bridge/NavigationBarBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "H5NavigationStyle"
.end annotation


# instance fields
.field private style:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/cloud/tmc/integration/bridge/NavigationBarBridge$H5NavigationStyle;->style:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public getStyle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/bridge/NavigationBarBridge$H5NavigationStyle;->style:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
