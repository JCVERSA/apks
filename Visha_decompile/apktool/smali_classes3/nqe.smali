.class public final Lnqe;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfqe;


# instance fields
.field public final synthetic a:Lwqe;


# direct methods
.method public synthetic constructor <init>(Lwqe;Lvqe;)V
    .locals 0

    iput-object p1, p0, Lnqe;->a:Lwqe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a([B[B)V
    .locals 99

    move-object/from16 v0, p0

    iget-object v0, v0, Lnqe;->a:Lwqe;

    iget v1, v0, Lwqe;->q1:I

    iget v2, v0, Lwqe;->e2:I

    xor-int/2addr v1, v2

    iget v2, v0, Lwqe;->z:I

    xor-int/2addr v1, v2

    iget v3, v0, Lwqe;->S1:I

    xor-int/2addr v1, v3

    iput v1, v0, Lwqe;->S1:I

    iget v3, v0, Lwqe;->r1:I

    and-int/2addr v3, v2

    iget v4, v0, Lwqe;->U1:I

    xor-int/2addr v3, v4

    iget v4, v0, Lwqe;->b:I

    iget v5, v0, Lwqe;->d0:I

    xor-int v6, v4, v5

    iget v7, v0, Lwqe;->N:I

    xor-int v8, v6, v7

    or-int v9, v7, v6

    xor-int v10, v6, v9

    iget v11, v0, Lwqe;->v0:I

    xor-int/2addr v10, v11

    iget v11, v0, Lwqe;->l0:I

    not-int v12, v11

    iget v13, v0, Lwqe;->Z1:I

    and-int/2addr v9, v12

    xor-int/2addr v9, v13

    iget v13, v0, Lwqe;->P1:I

    xor-int/2addr v9, v13

    not-int v13, v7

    and-int v14, v4, v13

    xor-int/2addr v14, v5

    or-int/2addr v14, v11

    iget v15, v0, Lwqe;->I1:I

    xor-int/2addr v14, v15

    iget v15, v0, Lwqe;->V:I

    or-int/2addr v14, v15

    move/from16 p0, v1

    iget v1, v0, Lwqe;->r:I

    xor-int v16, v4, v1

    and-int v16, v16, v2

    move/from16 p1, v2

    iget v2, v0, Lwqe;->R1:I

    xor-int v2, v2, v16

    not-int v2, v2

    and-int/2addr v2, v11

    xor-int/2addr v2, v3

    move/from16 v16, v1

    iget v1, v0, Lwqe;->V0:I

    xor-int/2addr v1, v2

    iget v2, v0, Lwqe;->A:I

    xor-int/2addr v1, v2

    iput v1, v0, Lwqe;->A:I

    iget v2, v0, Lwqe;->Q:I

    move/from16 p2, v3

    not-int v3, v2

    or-int v17, v2, v1

    move/from16 v18, v1

    and-int v1, v5, v4

    and-int v19, v1, v11

    move/from16 v20, v3

    iget v3, v0, Lwqe;->L1:I

    xor-int v3, v3, v19

    move/from16 v19, v4

    not-int v4, v15

    move/from16 v21, v5

    iget v5, v0, Lwqe;->F1:I

    xor-int/2addr v5, v1

    move/from16 v22, v9

    iget v9, v0, Lwqe;->s0:I

    xor-int/2addr v5, v9

    or-int/2addr v5, v15

    and-int v9, v1, v13

    xor-int/2addr v6, v9

    or-int/2addr v6, v11

    xor-int/2addr v6, v8

    iget v13, v0, Lwqe;->H0:I

    xor-int/2addr v6, v13

    iget v13, v0, Lwqe;->F:I

    or-int/2addr v6, v13

    move/from16 v23, v5

    iget v5, v0, Lwqe;->u0:I

    xor-int/2addr v5, v6

    iget v6, v0, Lwqe;->g0:I

    xor-int/2addr v5, v6

    iput v5, v0, Lwqe;->g0:I

    not-int v6, v5

    and-int v24, v2, v6

    or-int v25, v7, v1

    move/from16 v26, v6

    iget v6, v0, Lwqe;->N0:I

    xor-int v6, v6, v25

    xor-int/2addr v9, v1

    move/from16 v25, v5

    iget v5, v0, Lwqe;->L0:I

    and-int v27, v9, v12

    xor-int v5, v5, v27

    and-int/2addr v3, v4

    xor-int/2addr v3, v5

    or-int/2addr v3, v13

    xor-int v4, v10, v14

    xor-int/2addr v3, v4

    iget v4, v0, Lwqe;->i0:I

    xor-int/2addr v3, v4

    iput v3, v0, Lwqe;->i0:I

    iget v4, v0, Lwqe;->g:I

    and-int v5, v4, v3

    not-int v10, v3

    and-int v14, v4, v10

    move/from16 v27, v2

    iget v2, v0, Lwqe;->o:I

    and-int/2addr v14, v2

    move/from16 v28, v6

    iget v6, v0, Lwqe;->h1:I

    xor-int/2addr v14, v3

    xor-int/2addr v6, v3

    move/from16 v29, v14

    iget v14, v0, Lwqe;->M:I

    move/from16 v30, v6

    not-int v6, v14

    and-int/2addr v6, v3

    and-int/2addr v6, v4

    xor-int v31, v3, v6

    move/from16 v32, v6

    iget v6, v0, Lwqe;->f2:I

    xor-int v6, v31, v6

    move/from16 v33, v6

    not-int v6, v2

    and-int v31, v31, v6

    xor-int v31, v3, v31

    and-int v34, v14, v10

    move/from16 v35, v6

    and-int v6, v4, v34

    move/from16 v36, v12

    not-int v12, v6

    and-int/2addr v12, v2

    move/from16 v37, v12

    or-int v12, v14, v3

    move/from16 v38, v6

    not-int v6, v12

    and-int/2addr v6, v4

    xor-int/2addr v5, v12

    not-int v5, v5

    and-int/2addr v5, v2

    move/from16 v39, v6

    and-int v6, v12, v10

    not-int v6, v6

    and-int/2addr v6, v4

    move/from16 v40, v10

    and-int v10, v14, v3

    xor-int v41, v10, v4

    or-int v41, v2, v41

    move/from16 v42, v5

    not-int v5, v10

    and-int/2addr v5, v3

    not-int v5, v5

    and-int/2addr v5, v4

    and-int v43, v5, v2

    or-int v44, v2, v5

    move/from16 v45, v6

    iget v6, v0, Lwqe;->d2:I

    xor-int v44, v6, v44

    move/from16 v46, v12

    iget v12, v0, Lwqe;->O0:I

    xor-int/2addr v12, v10

    and-int/2addr v2, v12

    xor-int/2addr v2, v6

    xor-int v6, v14, v3

    not-int v12, v6

    and-int/2addr v12, v4

    xor-int/2addr v6, v4

    move/from16 v47, v3

    iget v3, v0, Lwqe;->b2:I

    xor-int/2addr v3, v9

    or-int/2addr v3, v15

    iget v9, v0, Lwqe;->f1:I

    xor-int/2addr v3, v9

    not-int v9, v13

    and-int/2addr v3, v9

    xor-int v3, v22, v3

    move/from16 v22, v15

    iget v15, v0, Lwqe;->k:I

    xor-int/2addr v3, v15

    iput v3, v0, Lwqe;->k:I

    not-int v1, v1

    and-int v1, v21, v1

    or-int/2addr v1, v7

    iget v15, v0, Lwqe;->Y1:I

    xor-int/2addr v1, v15

    not-int v15, v1

    and-int/2addr v15, v11

    xor-int/2addr v8, v15

    iget v15, v0, Lwqe;->m0:I

    xor-int/2addr v8, v15

    and-int v1, v1, v36

    xor-int v1, v28, v1

    xor-int v1, v1, v23

    iget v15, v0, Lwqe;->i:I

    and-int/2addr v1, v9

    xor-int/2addr v1, v8

    xor-int/2addr v1, v15

    iput v1, v0, Lwqe;->i:I

    iget v8, v0, Lwqe;->G:I

    not-int v9, v8

    and-int v15, v1, v8

    move/from16 v23, v7

    iget v7, v0, Lwqe;->y:I

    move/from16 v28, v3

    not-int v3, v7

    and-int v48, v1, v9

    xor-int v49, v8, v48

    move/from16 v50, v11

    iget v11, v0, Lwqe;->j:I

    move/from16 v51, v4

    move/from16 v4, v19

    move/from16 v19, v13

    not-int v13, v4

    and-int/2addr v13, v11

    move/from16 v52, v11

    iget v11, v0, Lwqe;->w1:I

    xor-int/2addr v11, v13

    and-int v11, v11, v36

    xor-int v11, p2, v11

    move/from16 v36, v14

    iget v14, v0, Lwqe;->V1:I

    xor-int/2addr v11, v14

    iget v14, v0, Lwqe;->E:I

    xor-int/2addr v11, v14

    iput v11, v0, Lwqe;->E:I

    iget v14, v0, Lwqe;->N1:I

    xor-int/2addr v14, v11

    move/from16 p2, v14

    iget v14, v0, Lwqe;->a:I

    move/from16 v53, v2

    or-int v2, v14, v11

    move/from16 v54, v9

    not-int v9, v11

    move/from16 v55, v1

    iget v1, v0, Lwqe;->c0:I

    move/from16 v56, v8

    and-int v8, v2, v9

    move/from16 v57, v6

    not-int v6, v8

    and-int/2addr v6, v1

    xor-int/2addr v6, v14

    move/from16 v58, v8

    not-int v8, v2

    and-int/2addr v8, v1

    and-int v59, v14, v11

    and-int v60, v1, v59

    xor-int v61, v14, v60

    and-int v62, v14, v9

    and-int v63, v1, v62

    xor-int v64, v62, v1

    and-int v65, v1, v11

    move/from16 v66, v6

    not-int v6, v14

    and-int v67, v11, v6

    and-int v68, v1, v67

    xor-int v69, v14, v65

    move/from16 v70, v2

    xor-int v2, v14, v11

    move/from16 v71, v8

    not-int v8, v2

    and-int/2addr v1, v8

    xor-int v8, v14, v1

    move/from16 v72, v1

    iget v1, v0, Lwqe;->F0:I

    and-int v31, v31, v9

    xor-int v1, v1, v31

    move/from16 v31, v8

    iget v8, v0, Lwqe;->p0:I

    xor-int/2addr v8, v13

    iget v13, v0, Lwqe;->s1:I

    xor-int/2addr v8, v13

    iget v13, v0, Lwqe;->R0:I

    xor-int/2addr v8, v13

    iget v13, v0, Lwqe;->H:I

    not-int v8, v8

    and-int/2addr v8, v13

    move/from16 v73, v1

    iget v1, v0, Lwqe;->n:I

    xor-int/2addr v1, v8

    iget v8, v0, Lwqe;->O:I

    xor-int/2addr v1, v8

    iput v1, v0, Lwqe;->O:I

    not-int v8, v1

    and-int v74, v7, v8

    or-int v75, v1, v7

    or-int v76, v16, v4

    xor-int v4, v4, v76

    and-int v4, v4, p1

    move/from16 p1, v1

    iget v1, v0, Lwqe;->a2:I

    xor-int/2addr v1, v4

    iput v1, v0, Lwqe;->f1:I

    iget v4, v0, Lwqe;->M0:I

    xor-int/2addr v1, v4

    not-int v1, v1

    and-int/2addr v1, v13

    xor-int v1, p0, v1

    iput v1, v0, Lwqe;->M0:I

    iget v4, v0, Lwqe;->m:I

    xor-int/2addr v1, v4

    iput v1, v0, Lwqe;->m:I

    iget v4, v0, Lwqe;->a1:I

    move/from16 v76, v8

    iget v8, v0, Lwqe;->c:I

    move/from16 p0, v1

    not-int v1, v8

    and-int/2addr v1, v4

    iget v4, v0, Lwqe;->J1:I

    xor-int/2addr v1, v4

    iget v4, v0, Lwqe;->C0:I

    xor-int/2addr v1, v4

    iget v4, v0, Lwqe;->e0:I

    or-int/2addr v1, v4

    iget v4, v0, Lwqe;->u1:I

    xor-int/2addr v1, v4

    iget v4, v0, Lwqe;->L:I

    xor-int/2addr v1, v4

    iput v1, v0, Lwqe;->L:I

    and-int v4, v15, v3

    move/from16 v77, v8

    iget v8, v0, Lwqe;->q0:I

    and-int/2addr v8, v1

    move/from16 v78, v13

    iget v13, v0, Lwqe;->s:I

    xor-int/2addr v8, v13

    iget v13, v0, Lwqe;->j0:I

    or-int/2addr v8, v13

    move/from16 v79, v2

    iget v2, v0, Lwqe;->x0:I

    and-int/2addr v2, v1

    move/from16 v80, v11

    iget v11, v0, Lwqe;->n0:I

    xor-int/2addr v11, v2

    move/from16 v81, v14

    iget v14, v0, Lwqe;->A1:I

    or-int/2addr v11, v14

    move/from16 v82, v6

    iget v6, v0, Lwqe;->K1:I

    and-int/2addr v6, v1

    move/from16 v83, v4

    iget v4, v0, Lwqe;->Q0:I

    xor-int/2addr v4, v6

    iget v6, v0, Lwqe;->A0:I

    not-int v6, v6

    move/from16 v84, v4

    iget v4, v0, Lwqe;->y1:I

    xor-int v34, v34, v38

    xor-int/2addr v5, v10

    xor-int/2addr v12, v10

    and-int v34, v34, v35

    xor-int v30, v30, v37

    xor-int v35, v46, v45

    xor-int v37, v5, v41

    xor-int v12, v12, v42

    xor-int v38, v57, v43

    and-int/2addr v6, v1

    xor-int/2addr v4, v6

    iget v6, v0, Lwqe;->w0:I

    and-int/2addr v6, v1

    move/from16 v41, v4

    iget v4, v0, Lwqe;->y0:I

    xor-int/2addr v4, v6

    or-int/2addr v4, v13

    iget v6, v0, Lwqe;->o1:I

    not-int v6, v6

    move/from16 v42, v4

    iget v4, v0, Lwqe;->B0:I

    and-int/2addr v6, v1

    xor-int/2addr v4, v6

    xor-int/2addr v4, v11

    iput v4, v0, Lwqe;->s:I

    iget v11, v0, Lwqe;->O1:I

    xor-int/2addr v2, v11

    or-int/2addr v2, v14

    iget v11, v0, Lwqe;->v1:I

    and-int/2addr v11, v1

    move/from16 v43, v4

    iget v4, v0, Lwqe;->t0:I

    xor-int/2addr v4, v11

    not-int v11, v13

    move/from16 v45, v4

    iget v4, v0, Lwqe;->G0:I

    not-int v4, v4

    move/from16 v46, v13

    iget v13, v0, Lwqe;->r0:I

    and-int/2addr v10, v9

    and-int/2addr v4, v1

    and-int v44, v44, v9

    xor-int v10, v39, v10

    xor-int/2addr v4, v13

    iget v13, v0, Lwqe;->q:I

    xor-int/2addr v4, v8

    xor-int/2addr v4, v13

    iput v4, v0, Lwqe;->q:I

    and-int v8, v56, v4

    xor-int v13, v8, v15

    or-int/2addr v13, v7

    move/from16 v39, v13

    not-int v13, v8

    and-int v13, v56, v13

    not-int v13, v13

    and-int v13, v55, v13

    and-int v57, v55, v8

    and-int v85, v55, v4

    and-int v86, v85, v3

    xor-int v86, v49, v86

    or-int v85, v7, v85

    move/from16 v87, v13

    not-int v13, v4

    and-int v13, v56, v13

    xor-int v13, v13, v55

    xor-int v88, v13, v83

    and-int v88, v88, v82

    and-int v89, v4, v54

    and-int v90, v55, v89

    xor-int v90, v8, v90

    or-int v90, v7, v90

    move/from16 v91, v8

    xor-int v8, v89, v15

    and-int v92, v8, v3

    xor-int v92, v48, v92

    and-int v92, v92, v82

    not-int v8, v8

    and-int/2addr v8, v7

    xor-int v8, v48, v8

    or-int v8, v81, v8

    and-int v93, v89, v82

    or-int v89, v89, v7

    move/from16 v94, v3

    or-int v3, v4, v56

    xor-int v95, v3, v55

    and-int v96, v3, v54

    xor-int v97, v96, v48

    or-int v97, v97, v7

    xor-int v15, v15, v97

    and-int v15, v15, v82

    move/from16 v98, v15

    not-int v15, v3

    and-int v15, v55, v15

    xor-int/2addr v3, v15

    not-int v3, v3

    and-int/2addr v3, v7

    xor-int v3, v49, v3

    xor-int v4, v4, v56

    and-int v15, v55, v4

    xor-int v15, v96, v15

    xor-int v15, v15, v89

    and-int v15, v15, v82

    xor-int v49, v4, v83

    or-int v49, v81, v49

    xor-int v55, v4, v57

    and-int v55, v7, v55

    xor-int v48, v48, v55

    move/from16 v55, v7

    iget v7, v0, Lwqe;->l1:I

    or-int v35, v80, v35

    or-int v12, v80, v12

    or-int v34, v80, v34

    xor-int v57, v79, v63

    xor-int v68, v79, v68

    xor-int v38, v38, v44

    move/from16 v44, v3

    xor-int v3, v67, v63

    xor-int v67, v59, v63

    xor-int v79, v80, v63

    xor-int v62, v62, v71

    xor-int v83, v80, v60

    xor-int v71, v70, v71

    and-int/2addr v7, v1

    move/from16 v89, v15

    iget v15, v0, Lwqe;->B1:I

    xor-int v5, v5, v35

    or-int v32, v80, v32

    xor-int v34, v37, v34

    xor-int v12, v30, v12

    xor-int v29, v29, v32

    xor-int/2addr v7, v15

    xor-int/2addr v2, v7

    iget v7, v0, Lwqe;->D1:I

    xor-int/2addr v6, v7

    or-int/2addr v6, v14

    iget v15, v0, Lwqe;->d1:I

    not-int v15, v15

    and-int/2addr v15, v1

    move/from16 v30, v7

    iget v7, v0, Lwqe;->k1:I

    xor-int/2addr v7, v15

    and-int/2addr v7, v11

    xor-int v7, v41, v7

    iget v15, v0, Lwqe;->w:I

    xor-int/2addr v7, v15

    iput v7, v0, Lwqe;->w:I

    not-int v10, v10

    iget v15, v0, Lwqe;->D:I

    and-int v9, v33, v9

    xor-int v9, v53, v9

    and-int/2addr v10, v7

    xor-int v10, v38, v10

    xor-int/2addr v10, v15

    iput v10, v0, Lwqe;->D:I

    xor-int v13, v13, v97

    xor-int v4, v4, v85

    xor-int v15, v86, v92

    xor-int/2addr v8, v13

    xor-int v4, v4, v88

    xor-int v13, v48, v98

    and-int v29, v29, v7

    xor-int v29, v73, v29

    move/from16 v32, v10

    xor-int v10, v29, v78

    iput v10, v0, Lwqe;->H:I

    not-int v5, v5

    move/from16 v29, v11

    iget v11, v0, Lwqe;->Z:I

    and-int/2addr v5, v7

    xor-int/2addr v5, v12

    xor-int/2addr v5, v11

    iput v5, v0, Lwqe;->Z:I

    not-int v9, v9

    and-int/2addr v7, v9

    xor-int v7, v34, v7

    xor-int v7, v7, v21

    iput v7, v0, Lwqe;->d0:I

    iget v9, v0, Lwqe;->n1:I

    not-int v9, v9

    and-int/2addr v9, v1

    iget v11, v0, Lwqe;->M1:I

    xor-int/2addr v9, v11

    iget v11, v0, Lwqe;->h0:I

    xor-int/2addr v6, v9

    and-int v9, v11, v6

    iget v12, v0, Lwqe;->k0:I

    xor-int/2addr v9, v2

    xor-int/2addr v9, v12

    iput v9, v0, Lwqe;->k0:I

    not-int v12, v9

    and-int v21, v67, v12

    move/from16 v33, v1

    xor-int v1, v31, v21

    not-int v1, v1

    and-int v1, v36, v1

    and-int v21, v66, v12

    and-int v31, v70, v12

    move/from16 v34, v5

    xor-int v5, v61, v31

    not-int v5, v5

    and-int v5, v36, v5

    and-int v31, v79, v12

    xor-int v31, v66, v31

    move/from16 v35, v2

    not-int v2, v3

    and-int/2addr v2, v9

    xor-int v2, v59, v2

    and-int v37, v71, v12

    xor-int v37, v80, v37

    move/from16 v38, v6

    iget v6, v0, Lwqe;->U:I

    xor-int v5, v37, v5

    or-int/2addr v5, v6

    xor-int v37, v67, v21

    and-int v37, v36, v37

    or-int v41, v9, v69

    xor-int v41, v64, v41

    move/from16 v48, v11

    iget v11, v0, Lwqe;->l:I

    xor-int v37, v41, v37

    xor-int v5, v37, v5

    xor-int/2addr v5, v11

    iput v5, v0, Lwqe;->l:I

    and-int v11, v13, v12

    xor-int/2addr v11, v8

    xor-int v11, v11, v19

    iput v11, v0, Lwqe;->F:I

    not-int v13, v7

    move/from16 v19, v13

    and-int v13, v7, v11

    move/from16 v37, v7

    not-int v7, v13

    move/from16 v41, v13

    not-int v13, v11

    and-int v53, v57, v12

    xor-int v53, v58, v53

    or-int v57, v9, v68

    move/from16 v58, v7

    xor-int v7, v62, v57

    not-int v7, v7

    and-int v7, v36, v7

    or-int/2addr v15, v9

    xor-int/2addr v4, v15

    xor-int/2addr v4, v14

    iput v4, v0, Lwqe;->G0:I

    xor-int v4, v91, v87

    xor-int v15, v95, v39

    xor-int v4, v4, v90

    xor-int v21, v83, v21

    xor-int v15, v15, v49

    xor-int v4, v4, v89

    xor-int v39, v44, v93

    xor-int v44, v59, v65

    and-int v49, v9, v82

    xor-int v49, v67, v49

    and-int v49, v36, v49

    xor-int v2, v2, v49

    or-int/2addr v2, v6

    xor-int v7, v31, v7

    xor-int/2addr v2, v7

    xor-int v2, v2, v52

    iput v2, v0, Lwqe;->j:I

    and-int v2, v60, v12

    xor-int v2, v63, v2

    not-int v2, v2

    and-int v2, v36, v2

    or-int v7, v9, v44

    xor-int/2addr v3, v7

    not-int v4, v4

    iget v7, v0, Lwqe;->B:I

    and-int/2addr v4, v9

    xor-int/2addr v4, v8

    xor-int/2addr v4, v7

    iput v4, v0, Lwqe;->B:I

    xor-int/2addr v1, v3

    and-int v3, v81, v12

    xor-int v3, p2, v3

    not-int v3, v3

    and-int v3, v36, v3

    and-int v7, v39, v12

    iget v8, v0, Lwqe;->P:I

    xor-int/2addr v7, v15

    xor-int/2addr v7, v8

    iput v7, v0, Lwqe;->P:I

    and-int v8, v10, v7

    iput v8, v0, Lwqe;->O1:I

    iput v8, v0, Lwqe;->R1:I

    not-int v12, v7

    and-int/2addr v12, v10

    iput v12, v0, Lwqe;->N1:I

    iput v8, v0, Lwqe;->Y1:I

    iput v8, v0, Lwqe;->p1:I

    iput v8, v0, Lwqe;->o0:I

    or-int v8, v9, v66

    xor-int v8, v72, v8

    not-int v15, v6

    xor-int v2, v21, v2

    xor-int/2addr v3, v8

    and-int/2addr v3, v15

    xor-int/2addr v2, v3

    xor-int v2, v2, v46

    iput v2, v0, Lwqe;->j0:I

    xor-int v3, v2, v11

    or-int v8, v9, v59

    xor-int v8, v68, v8

    not-int v8, v8

    and-int v8, v36, v8

    xor-int v8, v53, v8

    or-int/2addr v8, v6

    xor-int/2addr v1, v8

    xor-int v1, v1, v48

    iput v1, v0, Lwqe;->r1:I

    or-int v8, v38, v48

    xor-int v8, v35, v8

    iget v9, v0, Lwqe;->a0:I

    xor-int/2addr v8, v9

    iput v8, v0, Lwqe;->a0:I

    iget v9, v0, Lwqe;->C:I

    or-int v15, v9, v8

    move/from16 v21, v6

    iget v6, v0, Lwqe;->K:I

    not-int v15, v15

    and-int/2addr v15, v6

    move/from16 p2, v4

    not-int v4, v9

    and-int/2addr v4, v8

    move/from16 v31, v1

    not-int v1, v4

    move/from16 v35, v2

    iget v2, v0, Lwqe;->S:I

    and-int/2addr v1, v8

    or-int v36, v2, v1

    and-int v38, v6, v4

    move/from16 v39, v13

    iget v13, v0, Lwqe;->W1:I

    xor-int/2addr v13, v4

    move/from16 v44, v14

    not-int v14, v2

    move/from16 v46, v11

    iget v11, v0, Lwqe;->t1:I

    and-int/2addr v13, v14

    xor-int/2addr v13, v11

    and-int v13, v51, v13

    move/from16 v49, v5

    iget v5, v0, Lwqe;->z1:I

    xor-int/2addr v5, v4

    xor-int/2addr v5, v13

    and-int v5, v5, v40

    not-int v13, v8

    and-int v40, v6, v13

    move/from16 v52, v5

    iget v5, v0, Lwqe;->Y0:I

    xor-int/2addr v5, v8

    and-int/2addr v5, v14

    xor-int/2addr v5, v8

    and-int v5, v51, v5

    xor-int/2addr v15, v8

    xor-int/2addr v5, v15

    or-int v5, v47, v5

    xor-int v15, v4, v38

    and-int v53, v8, v14

    xor-int v53, v15, v53

    and-int v53, v51, v53

    move/from16 v57, v3

    iget v3, v0, Lwqe;->i1:I

    and-int v29, v45, v29

    and-int v45, v18, v20

    xor-int v3, v3, v53

    or-int v3, v47, v3

    and-int/2addr v13, v9

    move/from16 v53, v4

    not-int v4, v13

    and-int/2addr v4, v6

    xor-int v59, v8, v4

    or-int v59, v2, v59

    xor-int v38, v38, v59

    and-int v38, v51, v38

    and-int v59, v6, v13

    xor-int v59, v9, v59

    move/from16 v60, v3

    and-int v3, v59, v2

    not-int v3, v3

    and-int v3, v51, v3

    and-int v59, v9, v8

    and-int v61, v6, v59

    xor-int v61, v8, v61

    and-int v61, v61, v14

    xor-int v15, v15, v61

    not-int v15, v15

    and-int v15, v51, v15

    xor-int v59, v59, v6

    and-int v59, v59, v2

    xor-int v11, v11, v59

    and-int v11, v51, v11

    xor-int/2addr v8, v9

    not-int v9, v8

    and-int/2addr v9, v6

    xor-int v59, v8, v6

    xor-int v61, v59, v2

    move/from16 v62, v2

    iget v2, v0, Lwqe;->d:I

    xor-int v3, v61, v3

    xor-int/2addr v1, v9

    xor-int/2addr v3, v5

    xor-int v1, v1, v36

    and-int v5, v13, v14

    and-int/2addr v4, v14

    xor-int/2addr v7, v12

    xor-int/2addr v2, v3

    iput v2, v0, Lwqe;->d:I

    not-int v3, v2

    and-int/2addr v7, v3

    iput v7, v0, Lwqe;->c1:I

    and-int v7, v2, v10

    iput v7, v0, Lwqe;->Y0:I

    xor-int v7, v8, v40

    iget v10, v0, Lwqe;->f:I

    xor-int/2addr v4, v7

    xor-int/2addr v4, v15

    xor-int v4, v4, v60

    xor-int/2addr v4, v10

    iput v4, v0, Lwqe;->f:I

    xor-int v7, v4, v34

    or-int v10, v4, v34

    move/from16 v12, v34

    not-int v13, v12

    and-int v14, v12, v4

    iput v14, v0, Lwqe;->i1:I

    not-int v15, v14

    and-int/2addr v15, v12

    and-int/2addr v6, v8

    xor-int v6, v53, v6

    xor-int/2addr v5, v6

    and-int v6, v51, v5

    xor-int/2addr v5, v6

    or-int v5, v47, v5

    iget v6, v0, Lwqe;->x:I

    xor-int/2addr v1, v11

    xor-int/2addr v1, v5

    xor-int/2addr v1, v6

    iput v1, v0, Lwqe;->x:I

    not-int v5, v1

    and-int v6, v57, v5

    iput v6, v0, Lwqe;->B0:I

    xor-int v6, v8, v9

    or-int v6, v62, v6

    xor-int v6, v59, v6

    xor-int v6, v6, v38

    xor-int v6, v6, v52

    xor-int v6, v6, v16

    iput v6, v0, Lwqe;->r:I

    iget v6, v0, Lwqe;->x1:I

    not-int v6, v6

    and-int v6, v33, v6

    iget v8, v0, Lwqe;->E0:I

    xor-int/2addr v6, v8

    iget v8, v0, Lwqe;->e:I

    xor-int v6, v6, v29

    xor-int/2addr v6, v8

    iput v6, v0, Lwqe;->e:I

    iget v8, v0, Lwqe;->T1:I

    or-int/2addr v8, v6

    iget v9, v0, Lwqe;->X1:I

    xor-int/2addr v8, v9

    not-int v8, v8

    and-int v8, p0, v8

    and-int v9, v18, v6

    not-int v11, v9

    and-int/2addr v11, v6

    or-int v16, v27, v11

    xor-int v16, v9, v16

    or-int v29, v25, v16

    or-int v34, v25, v11

    xor-int v17, v11, v17

    xor-int v11, v11, v27

    or-int v36, v27, v9

    xor-int v38, v9, v45

    or-int v38, v25, v38

    xor-int v40, v6, v36

    move/from16 v45, v7

    xor-int v7, v40, v38

    iput v7, v0, Lwqe;->V0:I

    and-int v7, v18, v26

    xor-int v38, v9, v36

    or-int v38, v25, v38

    move/from16 v40, v12

    iget v12, v0, Lwqe;->X0:I

    and-int v47, v12, v6

    move/from16 v52, v15

    iget v15, v0, Lwqe;->c2:I

    move/from16 v53, v14

    xor-int v14, v15, v47

    not-int v14, v14

    and-int v14, p0, v14

    and-int v47, v6, v20

    or-int v57, v25, v47

    move/from16 v59, v10

    not-int v10, v6

    and-int/2addr v12, v10

    move/from16 v60, v13

    iget v13, v0, Lwqe;->H1:I

    xor-int/2addr v12, v13

    or-int/2addr v15, v6

    move/from16 v61, v1

    iget v1, v0, Lwqe;->m1:I

    xor-int/2addr v1, v15

    and-int v15, v18, v10

    move/from16 v62, v5

    iget v5, v0, Lwqe;->Z0:I

    or-int/2addr v5, v6

    move/from16 v63, v4

    iget v4, v0, Lwqe;->Q1:I

    xor-int/2addr v5, v4

    move/from16 v64, v11

    iget v11, v0, Lwqe;->E1:I

    and-int/2addr v11, v6

    xor-int/2addr v11, v13

    xor-int v13, v18, v6

    xor-int v36, v13, v36

    and-int v36, v36, v26

    and-int v65, v13, v20

    or-int v66, v27, v13

    xor-int v15, v15, v66

    xor-int/2addr v7, v15

    iput v7, v0, Lwqe;->u0:I

    xor-int v7, v12, v8

    xor-int v8, v18, v65

    iget v12, v0, Lwqe;->U0:I

    and-int/2addr v12, v10

    xor-int/2addr v4, v12

    and-int v4, p0, v4

    xor-int/2addr v1, v4

    not-int v4, v1

    and-int v4, v25, v4

    xor-int/2addr v4, v7

    xor-int v4, v4, v50

    iput v4, v0, Lwqe;->l0:I

    and-int v1, v1, v26

    iget v12, v0, Lwqe;->b0:I

    xor-int/2addr v1, v7

    xor-int/2addr v1, v12

    iput v1, v0, Lwqe;->b0:I

    or-int v7, v1, v32

    iput v7, v0, Lwqe;->U0:I

    iput v7, v0, Lwqe;->T1:I

    xor-int v7, v32, v7

    iput v7, v0, Lwqe;->c2:I

    xor-int v7, v32, v1

    iput v7, v0, Lwqe;->Q1:I

    iget v7, v0, Lwqe;->W0:I

    and-int/2addr v7, v10

    iget v12, v0, Lwqe;->g2:I

    xor-int/2addr v7, v12

    and-int v7, p0, v7

    xor-int/2addr v7, v11

    or-int v11, v25, v7

    iget v12, v0, Lwqe;->J:I

    xor-int/2addr v5, v14

    xor-int/2addr v11, v5

    xor-int/2addr v11, v12

    iput v11, v0, Lwqe;->J:I

    not-int v12, v11

    and-int/2addr v12, v2

    iput v12, v0, Lwqe;->E1:I

    not-int v12, v12

    and-int/2addr v12, v2

    iput v12, v0, Lwqe;->g2:I

    and-int v12, v11, v2

    iput v12, v0, Lwqe;->m1:I

    and-int/2addr v3, v11

    iput v3, v0, Lwqe;->v1:I

    or-int v12, v2, v3

    iput v12, v0, Lwqe;->O0:I

    and-int v3, v3, v49

    iput v3, v0, Lwqe;->x0:I

    iput v3, v0, Lwqe;->e1:I

    xor-int v3, v11, v2

    iput v3, v0, Lwqe;->N0:I

    or-int/2addr v2, v11

    iput v2, v0, Lwqe;->h2:I

    not-int v3, v2

    and-int v3, v49, v3

    iput v3, v0, Lwqe;->J0:I

    iput v3, v0, Lwqe;->w1:I

    and-int v2, v2, v49

    iput v2, v0, Lwqe;->f2:I

    and-int v2, v7, v25

    iget v3, v0, Lwqe;->X:I

    xor-int/2addr v2, v5

    xor-int/2addr v2, v3

    iput v2, v0, Lwqe;->X:I

    move/from16 v2, v18

    not-int v3, v2

    and-int/2addr v3, v6

    and-int v5, v3, v20

    xor-int v7, v9, v5

    xor-int/2addr v3, v5

    xor-int v3, v3, v36

    iput v3, v0, Lwqe;->n1:I

    xor-int v3, v13, v5

    xor-int v3, v3, v29

    iput v3, v0, Lwqe;->E0:I

    xor-int v3, v9, v47

    and-int v3, v3, v26

    or-int v5, v6, v2

    xor-int/2addr v3, v5

    iput v3, v0, Lwqe;->W0:I

    and-int v3, v5, v20

    xor-int/2addr v3, v5

    and-int v3, v25, v3

    xor-int v3, v47, v3

    or-int v6, v27, v5

    xor-int/2addr v6, v5

    or-int v9, v25, v6

    xor-int v9, v16, v9

    iput v9, v0, Lwqe;->Z1:I

    xor-int v9, v6, v34

    and-int v12, v6, v25

    and-int/2addr v10, v5

    xor-int v14, v10, v24

    or-int v15, v25, v10

    xor-int v5, v5, v65

    or-int v5, v25, v5

    xor-int v5, v17, v5

    move/from16 p0, v1

    iget v1, v0, Lwqe;->P0:I

    not-int v1, v1

    and-int v1, v33, v1

    move/from16 v16, v11

    iget v11, v0, Lwqe;->K0:I

    xor-int/2addr v1, v11

    xor-int v1, v1, v42

    xor-int v1, v1, v77

    iput v1, v0, Lwqe;->c:I

    not-int v11, v1

    and-int v17, v2, v11

    and-int v18, v1, v76

    xor-int v20, v1, p1

    and-int v24, v1, v94

    and-int v25, v24, v76

    move/from16 v26, v4

    xor-int v4, v24, v75

    not-int v4, v4

    and-int v4, v56, v4

    move/from16 v27, v3

    move/from16 v24, v7

    move/from16 v7, v28

    not-int v3, v7

    or-int v28, p1, v1

    move/from16 v29, v8

    and-int v8, v55, v1

    and-int v34, v8, v76

    xor-int v25, v8, v25

    or-int v25, v56, v25

    xor-int v28, v8, v28

    move/from16 v36, v9

    xor-int v9, v28, v56

    iput v9, v0, Lwqe;->t1:I

    not-int v9, v8

    and-int/2addr v9, v1

    iput v9, v0, Lwqe;->U1:I

    or-int v28, p1, v9

    and-int v42, v28, v54

    move/from16 v49, v7

    or-int v7, v28, v56

    iput v7, v0, Lwqe;->h1:I

    xor-int v7, v9, v18

    iput v7, v0, Lwqe;->P0:I

    and-int v7, v8, v54

    and-int v28, v1, v54

    and-int v50, v55, v11

    and-int v65, v50, v76

    xor-int v66, v1, v65

    and-int v66, v56, v66

    xor-int v9, v9, v66

    iput v9, v0, Lwqe;->B1:I

    xor-int v9, v50, v74

    and-int v9, v9, v54

    or-int v50, v55, v1

    xor-int v65, v50, v65

    move/from16 v66, v11

    xor-int v11, v65, v28

    iput v11, v0, Lwqe;->A0:I

    or-int v11, p1, v50

    xor-int/2addr v8, v11

    or-int v8, v8, v56

    xor-int v8, v50, v8

    iput v8, v0, Lwqe;->l1:I

    xor-int/2addr v4, v11

    iput v4, v0, Lwqe;->s1:I

    xor-int v4, v11, v7

    iput v4, v0, Lwqe;->d1:I

    or-int v4, v11, v56

    and-int v7, v18, v54

    xor-int v7, v20, v7

    iput v7, v0, Lwqe;->r0:I

    xor-int v7, v55, v1

    or-int v8, p1, v7

    or-int v11, v8, v56

    xor-int/2addr v8, v1

    xor-int/2addr v8, v11

    iput v8, v0, Lwqe;->s0:I

    xor-int v8, v7, v74

    xor-int/2addr v4, v8

    iput v4, v0, Lwqe;->k1:I

    and-int v4, v7, v76

    and-int v4, v56, v4

    xor-int v4, v18, v4

    iput v4, v0, Lwqe;->n:I

    xor-int v4, v13, v47

    or-int v8, v46, v37

    xor-int/2addr v6, v15

    xor-int/2addr v10, v12

    xor-int v4, v4, v38

    xor-int v11, v7, v75

    xor-int/2addr v9, v11

    iput v9, v0, Lwqe;->R0:I

    xor-int v9, v7, v34

    xor-int v9, v9, v25

    iput v9, v0, Lwqe;->X1:I

    xor-int v7, v7, p1

    xor-int v7, v7, v42

    iput v7, v0, Lwqe;->g1:I

    iget v7, v0, Lwqe;->j1:I

    move/from16 v9, v33

    not-int v9, v9

    and-int/2addr v7, v9

    xor-int v7, v30, v7

    move/from16 v9, v44

    not-int v9, v9

    and-int/2addr v7, v9

    xor-int v7, v84, v7

    iput v7, v0, Lwqe;->A1:I

    and-int v7, v48, v7

    xor-int v7, v43, v7

    iget v9, v0, Lwqe;->I:I

    xor-int/2addr v7, v9

    iput v7, v0, Lwqe;->I:I

    or-int/2addr v5, v7

    xor-int/2addr v5, v14

    not-int v9, v7

    iget v11, v0, Lwqe;->Y:I

    xor-int v12, v1, v17

    and-int/2addr v6, v9

    xor-int/2addr v6, v10

    not-int v6, v6

    and-int/2addr v6, v11

    iput v6, v0, Lwqe;->C1:I

    xor-int v6, v64, v57

    and-int v10, v2, v7

    and-int v13, v10, v3

    or-int v14, v7, v1

    or-int v15, v14, v49

    move/from16 p1, v8

    and-int v8, v14, v66

    not-int v8, v8

    and-int/2addr v8, v2

    xor-int v17, v1, v8

    move/from16 v18, v10

    and-int v10, v17, v3

    iput v10, v0, Lwqe;->D1:I

    not-int v10, v14

    and-int/2addr v10, v2

    or-int v10, v49, v10

    move/from16 v17, v10

    and-int v10, v1, v7

    xor-int v20, v10, v8

    and-int v25, v20, v3

    move/from16 v28, v8

    not-int v8, v10

    and-int/2addr v8, v1

    and-int v30, v2, v10

    and-int v33, v36, v9

    xor-int v6, v6, v33

    not-int v6, v6

    and-int/2addr v6, v11

    xor-int/2addr v5, v6

    xor-int v5, v5, v22

    iput v5, v0, Lwqe;->V:I

    and-int v6, v29, v9

    xor-int v6, v27, v6

    not-int v6, v6

    and-int/2addr v6, v11

    and-int v11, v7, v66

    and-int v22, v2, v11

    move/from16 v27, v8

    iget v8, v0, Lwqe;->I0:I

    xor-int v29, v10, v22

    xor-int v13, v29, v13

    and-int/2addr v13, v8

    move/from16 v33, v5

    iget v5, v0, Lwqe;->b1:I

    move/from16 v34, v11

    not-int v11, v5

    xor-int v30, v10, v30

    xor-int v15, v30, v15

    xor-int/2addr v13, v15

    and-int/2addr v13, v11

    iput v13, v0, Lwqe;->H0:I

    and-int v13, v8, v29

    xor-int v14, v14, v22

    or-int v14, v14, v49

    xor-int/2addr v12, v14

    not-int v12, v12

    and-int/2addr v12, v8

    or-int v14, v7, v24

    iget v15, v0, Lwqe;->v:I

    xor-int/2addr v4, v14

    xor-int/2addr v4, v6

    xor-int/2addr v4, v15

    iput v4, v0, Lwqe;->v:I

    xor-int v6, v63, v4

    not-int v6, v6

    and-int v6, v32, v6

    iput v6, v0, Lwqe;->S0:I

    iput v6, v0, Lwqe;->X0:I

    move/from16 v6, v63

    not-int v14, v6

    and-int/2addr v4, v14

    xor-int/2addr v4, v6

    iput v4, v0, Lwqe;->q1:I

    and-int v4, v2, v9

    xor-int/2addr v10, v4

    xor-int v10, v10, v25

    not-int v10, v10

    and-int/2addr v10, v8

    xor-int/2addr v4, v1

    and-int/2addr v4, v3

    xor-int v4, v20, v4

    and-int/2addr v4, v8

    and-int/2addr v9, v1

    and-int v14, v2, v9

    xor-int v15, v7, v14

    or-int v15, v15, v49

    xor-int/2addr v9, v2

    and-int v20, v49, v9

    xor-int v18, v18, v20

    and-int v18, v8, v18

    and-int v20, v9, v3

    xor-int/2addr v14, v15

    and-int/2addr v14, v8

    xor-int/2addr v7, v1

    not-int v15, v7

    and-int/2addr v15, v2

    xor-int v15, v34, v15

    and-int v15, v49, v15

    xor-int v15, v30, v15

    not-int v15, v15

    and-int/2addr v15, v8

    iput v15, v0, Lwqe;->v0:I

    and-int/2addr v1, v3

    and-int v3, v33, p1

    and-int v15, v37, v39

    xor-int v22, v46, v37

    and-int v24, v46, v19

    and-int v25, v37, v58

    and-int v19, p1, v19

    xor-int v20, v7, v20

    xor-int v18, v20, v18

    or-int v18, v18, v5

    xor-int v20, v7, v49

    xor-int/2addr v1, v9

    xor-int/2addr v1, v4

    xor-int v4, v20, v10

    and-int/2addr v1, v11

    xor-int/2addr v1, v4

    xor-int v1, v1, v23

    iput v1, v0, Lwqe;->N:I

    or-int v4, v1, v46

    move/from16 v10, v33

    not-int v11, v10

    move/from16 v20, v5

    not-int v5, v1

    and-int v23, v46, v5

    xor-int v3, v23, v3

    not-int v3, v3

    and-int v3, v26, v3

    xor-int v29, p1, v4

    and-int v29, v29, v10

    move/from16 v30, v13

    xor-int v13, v41, v4

    move/from16 v33, v2

    not-int v2, v13

    and-int/2addr v2, v10

    or-int v22, v1, v22

    xor-int v22, v46, v22

    and-int v34, v35, v5

    move/from16 v36, v8

    xor-int v8, v35, v34

    iput v8, v0, Lwqe;->y1:I

    and-int v38, v8, v39

    and-int v8, v8, v62

    iput v8, v0, Lwqe;->Q0:I

    and-int v8, p1, v5

    xor-int v8, v19, v8

    xor-int v8, v8, v29

    not-int v8, v8

    and-int v8, v26, v8

    move/from16 v39, v14

    or-int v14, v1, v35

    xor-int v42, v35, v14

    move/from16 v43, v9

    and-int v9, v42, v46

    iput v9, v0, Lwqe;->y0:I

    iput v9, v0, Lwqe;->q0:I

    or-int v9, v1, v25

    or-int v25, v10, v9

    xor-int v13, v13, v25

    xor-int/2addr v3, v13

    iput v3, v0, Lwqe;->W1:I

    xor-int v3, v9, v29

    not-int v3, v3

    and-int v3, v26, v3

    xor-int v9, p1, v9

    xor-int v13, v15, v23

    and-int/2addr v13, v11

    xor-int/2addr v13, v9

    and-int v13, v26, v13

    and-int v23, v24, v5

    xor-int v24, v37, v23

    and-int/2addr v4, v11

    xor-int v4, v24, v4

    xor-int/2addr v4, v8

    iput v4, v0, Lwqe;->P1:I

    not-int v4, v14

    and-int v4, v46, v4

    or-int v4, v61, v4

    iput v4, v0, Lwqe;->t0:I

    or-int v4, v1, p1

    or-int v8, v1, v19

    move/from16 v25, v12

    xor-int v12, v41, v8

    not-int v12, v12

    and-int/2addr v12, v10

    xor-int/2addr v4, v12

    xor-int/2addr v4, v13

    iput v4, v0, Lwqe;->m0:I

    xor-int v4, p1, v1

    and-int/2addr v4, v10

    xor-int v8, v19, v8

    xor-int/2addr v4, v8

    and-int v4, v26, v4

    and-int/2addr v11, v8

    xor-int/2addr v11, v9

    xor-int/2addr v3, v11

    iput v3, v0, Lwqe;->x1:I

    xor-int v3, v41, v23

    not-int v11, v3

    and-int/2addr v11, v10

    or-int v12, v1, v37

    not-int v12, v12

    and-int/2addr v12, v10

    xor-int v12, v24, v12

    xor-int/2addr v4, v12

    iput v4, v0, Lwqe;->n0:I

    iput v14, v0, Lwqe;->G1:I

    and-int v4, v10, v5

    xor-int v4, v23, v4

    not-int v4, v4

    and-int v4, v26, v4

    xor-int v11, v22, v11

    xor-int/2addr v4, v11

    iput v4, v0, Lwqe;->C0:I

    xor-int v4, v35, v1

    iput v4, v0, Lwqe;->V1:I

    xor-int v11, v4, v38

    or-int v11, v61, v11

    iput v11, v0, Lwqe;->e2:I

    xor-int v11, v19, v1

    and-int/2addr v11, v10

    xor-int/2addr v8, v11

    not-int v8, v8

    and-int v8, v26, v8

    xor-int/2addr v2, v9

    xor-int/2addr v2, v8

    iput v2, v0, Lwqe;->T0:I

    and-int v2, v6, v60

    and-int v8, v59, v60

    xor-int/2addr v1, v15

    not-int v1, v1

    and-int/2addr v1, v10

    xor-int/2addr v1, v3

    and-int v1, v26, v1

    and-int v3, v15, v5

    xor-int v3, v46, v3

    not-int v3, v3

    and-int/2addr v3, v10

    xor-int/2addr v1, v3

    iput v1, v0, Lwqe;->H1:I

    or-int v1, v46, v34

    xor-int/2addr v1, v4

    or-int v1, v61, v1

    iput v1, v0, Lwqe;->M1:I

    xor-int v1, v7, v28

    xor-int v1, v1, v17

    xor-int v1, v1, v25

    and-int v3, v49, v7

    xor-int v3, v43, v3

    xor-int v3, v3, v39

    xor-int v3, v3, v18

    iget v4, v0, Lwqe;->R:I

    xor-int/2addr v3, v4

    iput v3, v0, Lwqe;->R:I

    not-int v4, v3

    and-int v5, v59, v4

    iput v5, v0, Lwqe;->D0:I

    xor-int v9, v8, v5

    iput v9, v0, Lwqe;->I1:I

    and-int v10, v31, v9

    and-int v11, v53, v4

    and-int v11, v31, v11

    and-int v12, v2, v4

    xor-int v13, v52, v12

    not-int v13, v13

    and-int v13, v16, v13

    or-int v14, v3, v6

    xor-int v15, v40, v14

    and-int v15, v31, v15

    and-int v17, v6, v4

    xor-int v18, v40, v17

    xor-int v19, v59, v17

    and-int v19, v31, v19

    xor-int v22, v8, v17

    move/from16 p1, v1

    xor-int v1, v22, v19

    not-int v1, v1

    and-int v1, v16, v1

    move/from16 v19, v7

    or-int v7, v3, v53

    iput v7, v0, Lwqe;->u1:I

    move/from16 v22, v4

    not-int v4, v7

    and-int v4, v31, v4

    xor-int v23, v6, v5

    or-int v23, v23, v31

    xor-int v24, v45, v3

    and-int v24, v31, v24

    xor-int v5, v5, v24

    not-int v5, v5

    and-int v5, v16, v5

    xor-int v23, v18, v23

    xor-int v5, v23, v5

    iput v5, v0, Lwqe;->J1:I

    or-int v23, v3, v45

    and-int v23, v31, v23

    xor-int v9, v9, v23

    xor-int/2addr v9, v13

    iput v9, v0, Lwqe;->K0:I

    xor-int v13, v45, v17

    not-int v13, v13

    and-int v13, v31, v13

    xor-int v12, v59, v12

    iput v12, v0, Lwqe;->z1:I

    xor-int v23, v53, v14

    or-int v23, v23, v31

    xor-int v7, v7, v23

    and-int v7, v16, v7

    xor-int/2addr v2, v3

    xor-int/2addr v2, v11

    xor-int/2addr v2, v7

    not-int v2, v2

    and-int v2, p2, v2

    or-int v7, v3, v8

    xor-int v7, v53, v7

    xor-int/2addr v7, v10

    iput v7, v0, Lwqe;->p0:I

    xor-int v8, v52, v3

    and-int v10, v31, v8

    xor-int v10, v18, v10

    iput v10, v0, Lwqe;->K1:I

    xor-int v11, v8, v31

    iput v11, v0, Lwqe;->e0:I

    xor-int/2addr v1, v11

    iput v1, v0, Lwqe;->w0:I

    xor-int/2addr v1, v2

    xor-int v1, v1, v36

    iput v1, v0, Lwqe;->F1:I

    not-int v1, v8

    and-int v1, v31, v1

    xor-int/2addr v1, v12

    and-int v1, v16, v1

    xor-int v1, v52, v1

    not-int v1, v1

    and-int v1, p2, v1

    xor-int v2, v6, v17

    iput v2, v0, Lwqe;->i2:I

    xor-int/2addr v2, v13

    not-int v2, v2

    and-int v2, v16, v2

    xor-int/2addr v2, v7

    iput v2, v0, Lwqe;->a1:I

    xor-int/2addr v1, v2

    xor-int v1, v1, v21

    iput v1, v0, Lwqe;->U:I

    or-int v1, v3, v40

    xor-int v1, v53, v1

    iput v1, v0, Lwqe;->d2:I

    xor-int/2addr v1, v15

    not-int v1, v1

    and-int v1, v16, v1

    xor-int/2addr v1, v10

    and-int v1, v1, p2

    xor-int/2addr v1, v5

    xor-int v1, v1, v51

    iput v1, v0, Lwqe;->g:I

    iput v14, v0, Lwqe;->z0:I

    xor-int v1, v14, v4

    iput v1, v0, Lwqe;->L1:I

    and-int v2, v45, v22

    and-int v2, v16, v2

    xor-int/2addr v1, v2

    and-int v1, p2, v1

    xor-int/2addr v1, v9

    iput v1, v0, Lwqe;->o1:I

    iget v2, v0, Lwqe;->u:I

    xor-int/2addr v1, v2

    iput v1, v0, Lwqe;->u:I

    and-int v1, v33, v19

    xor-int v1, v27, v1

    xor-int v1, v1, v30

    or-int v1, v20, v1

    xor-int v1, p1, v1

    iget v2, v0, Lwqe;->T:I

    xor-int/2addr v1, v2

    iput v1, v0, Lwqe;->T:I

    or-int v2, v1, v32

    iput v2, v0, Lwqe;->Z0:I

    or-int v2, p0, v2

    xor-int v2, v32, v2

    iput v2, v0, Lwqe;->j1:I

    or-int v2, p0, v1

    xor-int/2addr v2, v1

    iput v2, v0, Lwqe;->L0:I

    move/from16 v2, p0

    not-int v2, v2

    and-int/2addr v1, v2

    iput v1, v0, Lwqe;->b2:I

    return-void
.end method
