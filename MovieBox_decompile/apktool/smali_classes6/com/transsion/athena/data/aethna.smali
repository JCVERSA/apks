.class public Lcom/transsion/athena/data/aethna;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "Lcom/transsion/ga/AthenaAnalytics$c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/transsion/ga/AthenaAnalytics$c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/transsion/athena/data/aethna;->a:Ljava/lang/String;

    .line 5
    .line 6
    new-instance p1, Ljava/lang/ref/SoftReference;

    .line 7
    .line 8
    invoke-direct {p1, p2}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcom/transsion/athena/data/aethna;->b:Ljava/lang/ref/SoftReference;

    .line 12
    .line 13
    return-void
.end method
