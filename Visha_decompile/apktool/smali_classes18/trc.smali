.class public final synthetic Ltrc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lio/appmetrica/analytics/impl/Xb;

.field public final synthetic c:Z


# direct methods
.method public synthetic constructor <init>(Lio/appmetrica/analytics/impl/Xb;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltrc;->b:Lio/appmetrica/analytics/impl/Xb;

    iput-boolean p2, p0, Ltrc;->c:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Ltrc;->b:Lio/appmetrica/analytics/impl/Xb;

    iget-boolean p0, p0, Ltrc;->c:Z

    invoke-static {v0, p0}, Lio/appmetrica/analytics/impl/Xb;->a(Lio/appmetrica/analytics/impl/Xb;Z)V

    return-void
.end method
