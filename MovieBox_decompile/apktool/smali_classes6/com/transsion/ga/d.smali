.class public final synthetic Lcom/transsion/ga/d;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/transsion/athena/enatha/athena;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/athena/enatha/athena;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/transsion/ga/d;->a:Lcom/transsion/athena/enatha/athena;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ga/d;->a:Lcom/transsion/athena/enatha/athena;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/transsion/ga/AthenaAnalytics;->d(Lcom/transsion/athena/enatha/athena;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
