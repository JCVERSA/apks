.class public final synthetic Ltj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lj5d;


# direct methods
.method public synthetic constructor <init>(Lj5d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltj;->b:Lj5d;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Ltj;->b:Lj5d;

    invoke-static {p0}, Lcom/transsion/ga/AthenaAnalytics;->d(Lj5d;)V

    return-void
.end method
