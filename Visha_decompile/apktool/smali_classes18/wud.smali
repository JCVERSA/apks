.class public final synthetic Lwud;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:J

.field public final synthetic c:Lc74;


# direct methods
.method public synthetic constructor <init>(JLc74;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lwud;->b:J

    iput-object p3, p0, Lwud;->c:Lc74;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-wide v0, p0, Lwud;->b:J

    iget-object p0, p0, Lwud;->c:Lc74;

    invoke-static {v0, v1, p0}, Lcom/yandex/mobile/ads/impl/u80;->b(JLc74;)V

    return-void
.end method
