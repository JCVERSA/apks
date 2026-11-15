.class final Lcom/google/firebase/sessions/SessionDatastoreImpl$b;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/sessions/SessionDatastoreImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# static fields
.field public static final a:Lcom/google/firebase/sessions/SessionDatastoreImpl$b;

.field private static final b:Landroidx/datastore/preferences/core/c$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/firebase/sessions/SessionDatastoreImpl$b;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/firebase/sessions/SessionDatastoreImpl$b;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/firebase/sessions/SessionDatastoreImpl$b;->a:Lcom/google/firebase/sessions/SessionDatastoreImpl$b;

    .line 7
    .line 8
    const-string v0, "session_id"

    .line 9
    .line 10
    invoke-static {v0}, Landroidx/datastore/preferences/core/f;->g(Ljava/lang/String;)Landroidx/datastore/preferences/core/c$a;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    sput-object v0, Lcom/google/firebase/sessions/SessionDatastoreImpl$b;->b:Landroidx/datastore/preferences/core/c$a;

    .line 15
    .line 16
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final a()Landroidx/datastore/preferences/core/c$a;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/firebase/sessions/SessionDatastoreImpl$b;->b:Landroidx/datastore/preferences/core/c$a;

    .line 2
    .line 3
    return-object v0
.end method
