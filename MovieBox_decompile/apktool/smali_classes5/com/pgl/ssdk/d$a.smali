.class public Lcom/pgl/ssdk/d$a;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pgl/ssdk/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private final a:J

.field private final b:Lcom/pgl/ssdk/o;


# direct methods
.method public constructor <init>(JLcom/pgl/ssdk/o;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, Lcom/pgl/ssdk/d$a;->a:J

    .line 5
    .line 6
    iput-object p3, p0, Lcom/pgl/ssdk/d$a;->b:Lcom/pgl/ssdk/o;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a()Lcom/pgl/ssdk/o;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/pgl/ssdk/d$a;->b:Lcom/pgl/ssdk/o;

    .line 2
    .line 3
    return-object v0
.end method

.method public b()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/pgl/ssdk/d$a;->a:J

    .line 2
    .line 3
    return-wide v0
.end method
