.class Lfreemarker/core/Token;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public beginColumn:I

.field public beginLine:I

.field public endColumn:I

.field public endLine:I

.field public image:Ljava/lang/String;

.field public kind:I

.field public next:Lfreemarker/core/Token;

.field public specialToken:Lfreemarker/core/Token;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final newToken(I)Lfreemarker/core/Token;
    .locals 0

    new-instance p0, Lfreemarker/core/Token;

    invoke-direct {p0}, Lfreemarker/core/Token;-><init>()V

    return-object p0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lfreemarker/core/Token;->image:Ljava/lang/String;

    return-object p0
.end method
