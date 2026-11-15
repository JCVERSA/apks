.class public final Lfl0$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsi1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfl0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# static fields
.field public static final a:Lfl0$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lfl0$b;

    invoke-direct {v0}, Lfl0$b;-><init>()V

    sput-object v0, Lfl0$b;->a:Lfl0$b;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lokhttp3/RequestBody;)Lokhttp3/RequestBody;
    .locals 0

    return-object p1
.end method

.method public bridge synthetic convert(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lokhttp3/RequestBody;

    invoke-virtual {p0, p1}, Lfl0$b;->a(Lokhttp3/RequestBody;)Lokhttp3/RequestBody;

    move-result-object p0

    return-object p0
.end method
