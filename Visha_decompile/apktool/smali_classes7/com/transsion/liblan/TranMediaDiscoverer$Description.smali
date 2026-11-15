.class public Lcom/transsion/liblan/TranMediaDiscoverer$Description;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/liblan/TranMediaDiscoverer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Description"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/liblan/TranMediaDiscoverer$Description$Category;
    }
.end annotation


# instance fields
.field public final category:I

.field public final longName:Ljava/lang/String;

.field public final name:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/transsion/liblan/TranMediaDiscoverer$Description;->name:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lcom/transsion/liblan/TranMediaDiscoverer$Description;->longName:Ljava/lang/String;

    .line 5
    iput p3, p0, Lcom/transsion/liblan/TranMediaDiscoverer$Description;->category:I

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;ILqxa;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/liblan/TranMediaDiscoverer$Description;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method
