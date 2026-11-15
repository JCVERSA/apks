.class public final Los7$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsi1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Los7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Lsi1;


# direct methods
.method public constructor <init>(Lsi1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Los7$a;->a:Lsi1;

    return-void
.end method


# virtual methods
.method public a(Lokhttp3/ResponseBody;)Ljava/util/Optional;
    .locals 0

    iget-object p0, p0, Los7$a;->a:Lsi1;

    invoke-interface {p0, p1}, Lsi1;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic convert(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lokhttp3/ResponseBody;

    invoke-virtual {p0, p1}, Los7$a;->a(Lokhttp3/ResponseBody;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method
