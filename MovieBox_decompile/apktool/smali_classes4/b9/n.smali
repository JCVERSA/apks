.class public final synthetic Lb9/n;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ld9/a$a;


# instance fields
.field public final synthetic a:Lb9/o;

.field public final synthetic b:Lcom/google/android/datatransport/runtime/o;

.field public final synthetic c:J


# direct methods
.method public synthetic constructor <init>(Lb9/o;Lcom/google/android/datatransport/runtime/o;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lb9/n;->a:Lb9/o;

    .line 5
    .line 6
    iput-object p2, p0, Lb9/n;->b:Lcom/google/android/datatransport/runtime/o;

    .line 7
    .line 8
    iput-wide p3, p0, Lb9/n;->c:J

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final execute()Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lb9/n;->a:Lb9/o;

    .line 2
    .line 3
    iget-object v1, p0, Lb9/n;->b:Lcom/google/android/datatransport/runtime/o;

    .line 4
    .line 5
    iget-wide v2, p0, Lb9/n;->c:J

    .line 6
    .line 7
    invoke-static {v0, v1, v2, v3}, Lb9/o;->g(Lb9/o;Lcom/google/android/datatransport/runtime/o;J)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method
