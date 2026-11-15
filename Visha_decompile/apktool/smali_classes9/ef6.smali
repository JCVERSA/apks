.class public final synthetic Lef6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Lorg/schabi/newpipe/extractor/InfoItem$InfoType;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/String;Lorg/schabi/newpipe/extractor/InfoItem$InfoType;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lef6;->b:I

    iput-object p2, p0, Lef6;->c:Ljava/lang/String;

    iput-object p3, p0, Lef6;->d:Lorg/schabi/newpipe/extractor/InfoItem$InfoType;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lef6;->b:I

    iget-object v1, p0, Lef6;->c:Ljava/lang/String;

    iget-object p0, p0, Lef6;->d:Lorg/schabi/newpipe/extractor/InfoItem$InfoType;

    invoke-static {v0, v1, p0}, Lff6;->a(ILjava/lang/String;Lorg/schabi/newpipe/extractor/InfoItem$InfoType;)Ll96;

    move-result-object p0

    return-object p0
.end method
