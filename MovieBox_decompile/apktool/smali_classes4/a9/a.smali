.class public final synthetic La9/a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:La9/c;

.field public final synthetic b:Lcom/google/android/datatransport/runtime/o;

.field public final synthetic c:Lt8/j;

.field public final synthetic d:Lcom/google/android/datatransport/runtime/i;


# direct methods
.method public synthetic constructor <init>(La9/c;Lcom/google/android/datatransport/runtime/o;Lt8/j;Lcom/google/android/datatransport/runtime/i;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, La9/a;->a:La9/c;

    .line 5
    .line 6
    iput-object p2, p0, La9/a;->b:Lcom/google/android/datatransport/runtime/o;

    .line 7
    .line 8
    iput-object p3, p0, La9/a;->c:Lt8/j;

    .line 9
    .line 10
    iput-object p4, p0, La9/a;->d:Lcom/google/android/datatransport/runtime/i;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, La9/a;->a:La9/c;

    .line 2
    .line 3
    iget-object v1, p0, La9/a;->b:Lcom/google/android/datatransport/runtime/o;

    .line 4
    .line 5
    iget-object v2, p0, La9/a;->c:Lt8/j;

    .line 6
    .line 7
    iget-object v3, p0, La9/a;->d:Lcom/google/android/datatransport/runtime/i;

    .line 8
    .line 9
    invoke-static {v0, v1, v2, v3}, La9/c;->c(La9/c;Lcom/google/android/datatransport/runtime/o;Lt8/j;Lcom/google/android/datatransport/runtime/i;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
