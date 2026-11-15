.class public Lcom/transsion/liblan/TranRendererDiscoverer$Description;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/liblan/TranRendererDiscoverer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Description"
.end annotation


# instance fields
.field final longName:Ljava/lang/String;

.field public final name:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/transsion/liblan/TranRendererDiscoverer$Description;->name:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lcom/transsion/liblan/TranRendererDiscoverer$Description;->longName:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lyxa;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/transsion/liblan/TranRendererDiscoverer$Description;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
