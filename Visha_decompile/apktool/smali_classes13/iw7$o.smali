.class public final Liw7$o;
.super Liw7;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Liw7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "o"
.end annotation


# static fields
.field public static final a:Liw7$o;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Liw7$o;

    invoke-direct {v0}, Liw7$o;-><init>()V

    sput-object v0, Liw7$o;->a:Liw7$o;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Liw7;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lat8;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lokhttp3/MultipartBody$Part;

    invoke-virtual {p0, p1, p2}, Liw7$o;->d(Lat8;Lokhttp3/MultipartBody$Part;)V

    return-void
.end method

.method public d(Lat8;Lokhttp3/MultipartBody$Part;)V
    .locals 0

    if-eqz p2, :cond_0

    invoke-virtual {p1, p2}, Lat8;->e(Lokhttp3/MultipartBody$Part;)V

    :cond_0
    return-void
.end method
