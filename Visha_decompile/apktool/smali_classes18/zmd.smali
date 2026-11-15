.class public final synthetic Lzmd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lio/appmetrica/analytics/impl/m1;


# direct methods
.method public synthetic constructor <init>(Lio/appmetrica/analytics/impl/m1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lzmd;->b:Lio/appmetrica/analytics/impl/m1;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lzmd;->b:Lio/appmetrica/analytics/impl/m1;

    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/m1;->e()V

    return-void
.end method
