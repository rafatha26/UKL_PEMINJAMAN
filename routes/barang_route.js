import express from 'express'
import {
   getAllBarang,
   getBarangById,
   addBarang,
   updateBarang,
   deleteBarang
} from '../controllers/barang.controllers.js'

import { authorize } from '../controllers/auth.controllers.js'
import { IsAdmin, } from '../middleware/role_validation.js'

const app = express()


app.get('/',authorize, getAllBarang)
app.get('/:id',authorize, getBarangById)
app.post('/',authorize, addBarang)
app.put('/:id' ,authorize, updateBarang)
app.delete('/:id',authorize, deleteBarang)

export default app