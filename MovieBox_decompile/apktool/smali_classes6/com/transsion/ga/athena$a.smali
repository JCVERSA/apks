.class Lcom/transsion/ga/athena$a;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/ga/athena;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field a:I

.field b:Ljava/lang/String;

.field c:J


# direct methods
.method constructor <init>(ILjava/lang/String;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/transsion/ga/athena$a;->a:I

    .line 5
    .line 6
    iput-object p2, p0, Lcom/transsion/ga/athena$a;->b:Ljava/lang/String;

    .line 7
    .line 8
    iput-wide p3, p0, Lcom/transsion/ga/athena$a;->c:J

    .line 9
    .line 10
    return-void
.end method
