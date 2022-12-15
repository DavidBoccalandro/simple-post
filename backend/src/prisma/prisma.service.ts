import { Injectable } from '@nestjs/common';
import { PrismaClient } from '@prisma/client';

@Injectable()
export class PrismaService extends PrismaClient {
  constructor() {
    super({
      datasources: {
        db: {
          url: 'postgresql://simple_pos:simple_pos@localhost:5432/simple_pos?schema=public',
        },
      },
    });
  }
}
