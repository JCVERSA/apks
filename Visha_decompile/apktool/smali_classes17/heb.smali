.class public Lheb;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:Lheb;


# instance fields
.field public a:Lokhttp3/OkHttpClient;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lheb;

    invoke-direct {v0}, Lheb;-><init>()V

    sput-object v0, Lheb;->b:Lheb;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lokhttp3/OkHttpClient;
    .locals 1

    iget-object v0, p0, Lheb;->a:Lokhttp3/OkHttpClient;

    if-nez v0, :cond_0

    new-instance v0, Lokhttp3/OkHttpClient;

    invoke-direct {v0}, Lokhttp3/OkHttpClient;-><init>()V

    iput-object v0, p0, Lheb;->a:Lokhttp3/OkHttpClient;

    :cond_0
    iget-object p0, p0, Lheb;->a:Lokhttp3/OkHttpClient;

    return-object p0
.end method
