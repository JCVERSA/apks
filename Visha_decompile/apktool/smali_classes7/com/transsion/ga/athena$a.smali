.class public Lcom/transsion/ga/athena$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/ga/athena;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field public c:J


# direct methods
.method public constructor <init>(ILjava/lang/String;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/transsion/ga/athena$a;->a:I

    iput-object p2, p0, Lcom/transsion/ga/athena$a;->b:Ljava/lang/String;

    iput-wide p3, p0, Lcom/transsion/ga/athena$a;->c:J

    return-void
.end method
