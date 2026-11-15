.class public final Lnqf;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Z

.field public b:Z

.field public final c:Z

.field public d:J

.field public e:Ljava/lang/String;

.field public f:Lhue;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnqf;->a:Z

    iput-boolean v0, p0, Lnqf;->b:Z

    iput-boolean v0, p0, Lnqf;->c:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lnqf;->d:J

    const/4 v0, 0x0

    iput-object v0, p0, Lnqf;->f:Lhue;

    return-void
.end method
