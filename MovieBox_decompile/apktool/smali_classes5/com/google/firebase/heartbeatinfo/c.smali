.class public final synthetic Lcom/google/firebase/heartbeatinfo/c;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/google/firebase/heartbeatinfo/f;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Landroidx/datastore/preferences/core/c$a;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/heartbeatinfo/f;Ljava/lang/String;Ljava/lang/String;Landroidx/datastore/preferences/core/c$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/firebase/heartbeatinfo/c;->a:Lcom/google/firebase/heartbeatinfo/f;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/firebase/heartbeatinfo/c;->b:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/google/firebase/heartbeatinfo/c;->c:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/google/firebase/heartbeatinfo/c;->d:Landroidx/datastore/preferences/core/c$a;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/firebase/heartbeatinfo/c;->a:Lcom/google/firebase/heartbeatinfo/f;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/firebase/heartbeatinfo/c;->b:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/google/firebase/heartbeatinfo/c;->c:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/google/firebase/heartbeatinfo/c;->d:Landroidx/datastore/preferences/core/c$a;

    .line 8
    .line 9
    check-cast p1, Landroidx/datastore/preferences/core/MutablePreferences;

    .line 10
    .line 11
    invoke-static {v0, v1, v2, v3, p1}, Lcom/google/firebase/heartbeatinfo/f;->b(Lcom/google/firebase/heartbeatinfo/f;Ljava/lang/String;Ljava/lang/String;Landroidx/datastore/preferences/core/c$a;Landroidx/datastore/preferences/core/MutablePreferences;)Lkotlin/Unit;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    return-object p1
.end method
