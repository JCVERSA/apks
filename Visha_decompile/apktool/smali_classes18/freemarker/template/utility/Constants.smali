.class public abstract Lfreemarker/template/utility/Constants;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfreemarker/template/utility/Constants$EmptyHashModel;,
        Lfreemarker/template/utility/Constants$EmptySequenceModel;,
        Lfreemarker/template/utility/Constants$EmptyCollectionModel;,
        Lfreemarker/template/utility/Constants$EmptyIteratorModel;
    }
.end annotation


# static fields
.field public static final a:Lfreemarker/template/a;

.field public static final b:Lfreemarker/template/a;

.field public static final c:Lmga;

.field public static final d:Lhga;

.field public static final e:Lhga;

.field public static final f:Lhga;

.field public static final g:Lbga;

.field public static final h:Lbfa;

.field public static final i:Lnga;

.field public static final j:Lpfa;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Lfreemarker/template/a;->z6:Lfreemarker/template/a;

    sput-object v0, Lfreemarker/template/utility/Constants;->a:Lfreemarker/template/a;

    sget-object v0, Lfreemarker/template/a;->y6:Lfreemarker/template/a;

    sput-object v0, Lfreemarker/template/utility/Constants;->b:Lfreemarker/template/a;

    sget-object v0, Lmga;->Y4:Lzfa;

    check-cast v0, Lmga;

    sput-object v0, Lfreemarker/template/utility/Constants;->c:Lmga;

    new-instance v0, Lfreemarker/template/SimpleNumber;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lfreemarker/template/SimpleNumber;-><init>(I)V

    sput-object v0, Lfreemarker/template/utility/Constants;->d:Lhga;

    new-instance v0, Lfreemarker/template/SimpleNumber;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lfreemarker/template/SimpleNumber;-><init>(I)V

    sput-object v0, Lfreemarker/template/utility/Constants;->e:Lhga;

    new-instance v0, Lfreemarker/template/SimpleNumber;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Lfreemarker/template/SimpleNumber;-><init>(I)V

    sput-object v0, Lfreemarker/template/utility/Constants;->f:Lhga;

    new-instance v0, Lfreemarker/template/utility/Constants$EmptyIteratorModel;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lfreemarker/template/utility/Constants$EmptyIteratorModel;-><init>(Lsf1;)V

    sput-object v0, Lfreemarker/template/utility/Constants;->g:Lbga;

    new-instance v0, Lfreemarker/template/utility/Constants$EmptyCollectionModel;

    invoke-direct {v0, v1}, Lfreemarker/template/utility/Constants$EmptyCollectionModel;-><init>(Lsf1;)V

    sput-object v0, Lfreemarker/template/utility/Constants;->h:Lbfa;

    new-instance v0, Lfreemarker/template/utility/Constants$EmptySequenceModel;

    invoke-direct {v0, v1}, Lfreemarker/template/utility/Constants$EmptySequenceModel;-><init>(Lsf1;)V

    sput-object v0, Lfreemarker/template/utility/Constants;->i:Lnga;

    new-instance v0, Lfreemarker/template/utility/Constants$EmptyHashModel;

    invoke-direct {v0, v1}, Lfreemarker/template/utility/Constants$EmptyHashModel;-><init>(Lsf1;)V

    sput-object v0, Lfreemarker/template/utility/Constants;->j:Lpfa;

    return-void
.end method
