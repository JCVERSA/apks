.class public final Lqtg;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final d:Lw6f;


# instance fields
.field public final a:Lttg;

.field public final b:Lorg/json/JSONObject;

.field public final c:Lwbf;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lptg;

    invoke-direct {v0}, Lptg;-><init>()V

    sput-object v0, Lqtg;->d:Lw6f;

    return-void
.end method

.method public constructor <init>(Lttg;Lorg/json/JSONObject;Lwbf;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lqtg;->a:Lttg;

    iput-object p2, p0, Lqtg;->b:Lorg/json/JSONObject;

    iput-object p3, p0, Lqtg;->c:Lwbf;

    return-void
.end method
