.class public Ld5/a;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field private a:Ljava/nio/charset/Charset;

.field private b:Lc5/g1;

.field private c:La5/h;

.field private d:[Lcom/alibaba/fastjson/serializer/SerializerFeature;

.field private e:[Lc5/h1;

.field private f:[Lcom/alibaba/fastjson/parser/Feature;

.field private g:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/alibaba/fastjson/util/f;->b:Ljava/nio/charset/Charset;

    .line 5
    .line 6
    iput-object v0, p0, Ld5/a;->a:Ljava/nio/charset/Charset;

    .line 7
    .line 8
    invoke-static {}, Lc5/g1;->g()Lc5/g1;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iput-object v0, p0, Ld5/a;->b:Lc5/g1;

    .line 13
    .line 14
    invoke-static {}, La5/h;->t()La5/h;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iput-object v0, p0, Ld5/a;->c:La5/h;

    .line 19
    .line 20
    const/4 v0, 0x1

    .line 21
    new-array v1, v0, [Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 22
    .line 23
    sget-object v2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->BrowserSecure:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 24
    .line 25
    const/4 v3, 0x0

    .line 26
    aput-object v2, v1, v3

    .line 27
    .line 28
    iput-object v1, p0, Ld5/a;->d:[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 29
    .line 30
    new-array v1, v3, [Lc5/h1;

    .line 31
    .line 32
    iput-object v1, p0, Ld5/a;->e:[Lc5/h1;

    .line 33
    .line 34
    new-array v1, v3, [Lcom/alibaba/fastjson/parser/Feature;

    .line 35
    .line 36
    iput-object v1, p0, Ld5/a;->f:[Lcom/alibaba/fastjson/parser/Feature;

    .line 37
    .line 38
    iput-boolean v0, p0, Ld5/a;->g:Z

    .line 39
    .line 40
    return-void
.end method
