.class public final Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/protobuf/e$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# instance fields
.field public final b:Lkotlin/reflect/jvm/internal/impl/protobuf/f$b;

.field public final c:I

.field public final d:Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;

.field public final e:Z

.field public final f:Z


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/protobuf/f$b;ILkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$d;->b:Lkotlin/reflect/jvm/internal/impl/protobuf/f$b;

    iput p2, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$d;->c:I

    iput-object p3, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$d;->d:Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;

    iput-boolean p4, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$d;->e:Z

    iput-boolean p5, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$d;->f:Z

    return-void
.end method


# virtual methods
.method public a(Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$d;)I
    .locals 0

    iget p0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$d;->c:I

    iget p1, p1, Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$d;->c:I

    sub-int/2addr p0, p1

    return p0
.end method

.method public b()Lkotlin/reflect/jvm/internal/impl/protobuf/f$b;
    .locals 0

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$d;->b:Lkotlin/reflect/jvm/internal/impl/protobuf/f$b;

    return-object p0
.end method

.method public c(Lkotlin/reflect/jvm/internal/impl/protobuf/g$a;Lkotlin/reflect/jvm/internal/impl/protobuf/g;)Lkotlin/reflect/jvm/internal/impl/protobuf/g$a;
    .locals 0

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$b;

    check-cast p2, Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite;

    invoke-virtual {p1, p2}, Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$b;->d(Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite;)Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$b;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$d;

    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$d;->a(Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$d;)I

    move-result p0

    return p0
.end method

.method public getLiteJavaType()Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$JavaType;
    .locals 0

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$d;->d:Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;->getJavaType()Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$JavaType;

    move-result-object p0

    return-object p0
.end method

.method public getLiteType()Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;
    .locals 0

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$d;->d:Lkotlin/reflect/jvm/internal/impl/protobuf/WireFormat$FieldType;

    return-object p0
.end method

.method public getNumber()I
    .locals 0

    iget p0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$d;->c:I

    return p0
.end method

.method public isPacked()Z
    .locals 0

    iget-boolean p0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$d;->f:Z

    return p0
.end method

.method public isRepeated()Z
    .locals 0

    iget-boolean p0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/GeneratedMessageLite$d;->e:Z

    return p0
.end method
