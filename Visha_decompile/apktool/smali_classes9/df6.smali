.class public final synthetic Ldf6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lzf1;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Lorg/schabi/newpipe/extractor/InfoItem$InfoType;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/String;Lorg/schabi/newpipe/extractor/InfoItem$InfoType;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Ldf6;->b:I

    iput-object p2, p0, Ldf6;->c:Ljava/lang/String;

    iput-object p3, p0, Ldf6;->d:Lorg/schabi/newpipe/extractor/InfoItem$InfoType;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget v0, p0, Ldf6;->b:I

    iget-object v1, p0, Ldf6;->c:Ljava/lang/String;

    iget-object p0, p0, Ldf6;->d:Lorg/schabi/newpipe/extractor/InfoItem$InfoType;

    check-cast p1, Lorg/schabi/newpipe/extractor/Info;

    invoke-static {v0, v1, p0, p1}, Lff6;->b(ILjava/lang/String;Lorg/schabi/newpipe/extractor/InfoItem$InfoType;Lorg/schabi/newpipe/extractor/Info;)V

    return-void
.end method
