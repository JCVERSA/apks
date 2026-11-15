.class public final Lnod;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:J

.field public b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2
    .annotation build Landroidx/room/Ignore;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lnod;->a:J

    const/4 v0, 0x0

    iput-object v0, p0, Lnod;->b:Ljava/lang/String;

    return-void
.end method
