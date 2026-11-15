.class public Lorg/reflections/vfs/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/reflections/vfs/Vfs$b;


# instance fields
.field public final a:Ljava/net/URL;

.field public b:J

.field public c:J


# direct methods
.method public constructor <init>(Ljava/net/URL;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/reflections/vfs/a;->b:J

    iput-wide v0, p0, Lorg/reflections/vfs/a;->c:J

    iput-object p1, p0, Lorg/reflections/vfs/a;->a:Ljava/net/URL;

    return-void
.end method
