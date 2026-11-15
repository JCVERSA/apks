.class public abstract Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$c;
.super Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$b;
.source "SourceFile"

# interfaces
.implements Lun6;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "c"
.end annotation


# instance fields
.field public c:Lkotlin/reflect/jvm/internal/impl/protobuf/e;

.field public d:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$b;-><init>()V

    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->g()Lkotlin/reflect/jvm/internal/impl/protobuf/e;

    move-result-object v0

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$c;->c:Lkotlin/reflect/jvm/internal/impl/protobuf/e;

    return-void
.end method

.method public static synthetic f(Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$c;)Lkotlin/reflect/jvm/internal/impl/protobuf/e;
    .locals 0

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$c;->g()Lkotlin/reflect/jvm/internal/impl/protobuf/e;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final g()Lkotlin/reflect/jvm/internal/impl/protobuf/e;
    .locals 1

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$c;->c:Lkotlin/reflect/jvm/internal/impl/protobuf/e;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->q()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$c;->d:Z

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$c;->c:Lkotlin/reflect/jvm/internal/impl/protobuf/e;

    return-object p0
.end method

.method public final h()V
    .locals 1

    iget-boolean v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$c;->d:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$c;->c:Lkotlin/reflect/jvm/internal/impl/protobuf/e;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->b()Lkotlin/reflect/jvm/internal/impl/protobuf/e;

    move-result-object v0

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$c;->c:Lkotlin/reflect/jvm/internal/impl/protobuf/e;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$c;->d:Z

    :cond_0
    return-void
.end method

.method public final i(Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$ExtendableMessage;)V
    .locals 0

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$c;->h()V

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$c;->c:Lkotlin/reflect/jvm/internal/impl/protobuf/e;

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$ExtendableMessage;->access$200(Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$ExtendableMessage;)Lkotlin/reflect/jvm/internal/impl/protobuf/e;

    move-result-object p1

    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/e;->r(Lkotlin/reflect/jvm/internal/impl/protobuf/e;)V

    return-void
.end method
