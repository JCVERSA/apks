.class public final synthetic Lc9/i0;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lc9/m0$b;


# instance fields
.field public final synthetic a:Lc9/m0;

.field public final synthetic b:Lcom/google/android/datatransport/runtime/i;

.field public final synthetic c:Lcom/google/android/datatransport/runtime/o;


# direct methods
.method public synthetic constructor <init>(Lc9/m0;Lcom/google/android/datatransport/runtime/i;Lcom/google/android/datatransport/runtime/o;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lc9/i0;->a:Lc9/m0;

    .line 5
    .line 6
    iput-object p2, p0, Lc9/i0;->b:Lcom/google/android/datatransport/runtime/i;

    .line 7
    .line 8
    iput-object p3, p0, Lc9/i0;->c:Lcom/google/android/datatransport/runtime/o;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lc9/i0;->a:Lc9/m0;

    .line 2
    .line 3
    iget-object v1, p0, Lc9/i0;->b:Lcom/google/android/datatransport/runtime/i;

    .line 4
    .line 5
    iget-object v2, p0, Lc9/i0;->c:Lcom/google/android/datatransport/runtime/o;

    .line 6
    .line 7
    check-cast p1, Landroid/database/sqlite/SQLiteDatabase;

    .line 8
    .line 9
    invoke-static {v0, v1, v2, p1}, Lc9/m0;->w(Lc9/m0;Lcom/google/android/datatransport/runtime/i;Lcom/google/android/datatransport/runtime/o;Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Long;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method
