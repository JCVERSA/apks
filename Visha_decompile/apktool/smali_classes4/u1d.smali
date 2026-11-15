.class public abstract Lu1d;
.super Lc7d;
.source "SourceFile"


# instance fields
.field public final c:Ljava/util/HashSet;

.field public final d:Lorg/json/JSONObject;

.field public final e:J


# direct methods
.method public constructor <init>(Lc7d$b;Ljava/util/HashSet;Lorg/json/JSONObject;J)V
    .locals 0

    invoke-direct {p0, p1}, Lc7d;-><init>(Lc7d$b;)V

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1, p2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lu1d;->c:Ljava/util/HashSet;

    iput-object p3, p0, Lu1d;->d:Lorg/json/JSONObject;

    iput-wide p4, p0, Lu1d;->e:J

    return-void
.end method
