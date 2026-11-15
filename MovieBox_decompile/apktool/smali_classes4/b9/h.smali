.class public final synthetic Lb9/h;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ld9/a$a;


# instance fields
.field public final synthetic a:Lb9/o;

.field public final synthetic b:Lcom/google/android/datatransport/runtime/o;


# direct methods
.method public synthetic constructor <init>(Lb9/o;Lcom/google/android/datatransport/runtime/o;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lb9/h;->a:Lb9/o;

    .line 5
    .line 6
    iput-object p2, p0, Lb9/h;->b:Lcom/google/android/datatransport/runtime/o;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final execute()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lb9/h;->a:Lb9/o;

    .line 2
    .line 3
    iget-object v1, p0, Lb9/h;->b:Lcom/google/android/datatransport/runtime/o;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lb9/o;->d(Lb9/o;Lcom/google/android/datatransport/runtime/o;)Ljava/lang/Boolean;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method
